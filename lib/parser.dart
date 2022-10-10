import 'package:jlox/base.dart';
import 'package:jlox/errors.dart';
import 'package:jlox/token.dart';

import 'expression.dart';
import 'scanner.dart';
import 'token_type.dart';

extension Parser on Iterable<Token> {
  Expression get parse => _Parser(list).parse;
}

extension ParserString on String {
  Expression get parse => scan.parse;
}

class _Parser {
  final List<Token> tokens;
  _Parser(this.tokens);

  Expression get parse => expression();
  Expression expression() => equality();
  Expression equality() => starred(comparison, {TT.BANG_EQUAL, TT.EQUAL_EQUAL});
  Expression comparison() =>
      starred(term, {TT.LESS, TT.GREATER, TT.LESS_EQUAL, TT.GREATER_EQUAL});
  Expression term() => starred(factor, {TT.PLUS, TT.MINUS});
  Expression factor() => starred(() => unary(), {TT.STAR, TT.SLASH});
  Expression unary() => match({TT.MINUS, TT.BANG})
      ? Expression.unary(
          tokenType: tokenType.and(() => eat), expression: unary())
      : primary();
  Expression primary() {
    final callbacks = {
      TT.LEFT_PAREN: () {
        eat;
        final exp = Expression.grouping(expression());
        if (!match({TT.RIGHT_PAREN})) {
          report("Expected ) ${token.string}");
        }
        return exp;
      },
      TT.STRING: () => Expression.string(literal),
      TT.NUMBER: () => Expression.number(literal),
      TT.FALSE: () => Expression.boolean(false),
      TT.TRUE: () => Expression.boolean(true),
      TT.NIL: () => Expression.nil()
    };
    if (match(callbacks.keys)) {
      final value = callbacks[tokenType]!();
      eat;
      return value;
    }
    report("Unexpected token ${token.string}");
    return Expression.nil();
  }

  Expression starred(Expression Function() maker, Set<TT> tokens) {
    Expression c = maker();

    while (match(tokens)) {
      c = Expression.binary(
          tokenType: tokenType.and(() => eat), left: c, right: maker());
    }
    return c;
  }

  bool match(Iterable<TT> tokens) => tokens.contains(tokenType);
  TT get tokenType => token.tokenType;
  dynamic get literal => token.literal;
  Token get token => tokens[current];
  int current = 0;
  get eat => current++;
}
