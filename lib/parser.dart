import 'package:jlox/base.dart';
import 'package:jlox/errors.dart';
import 'package:jlox/token.dart';
import 'package:tuple/tuple.dart';

import 'expression.dart';
import 'token_type.dart';
import 'scanner.dart';

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
  Expression expression() => Expression.expression(equality());
  Equality equality() =>
      starred(comparison, Equality.new, {TT.BANG_EQUAL, TT.EQUAL_EQUAL});
  Comparison comparison() => starred(term, Comparison.new,
      {TT.LESS, TT.GREATER, TT.LESS_EQUAL, TT.GREATER_EQUAL});
  Term term() => starred(factor, Term.new, {TT.PLUS, TT.MINUS});
  Factor factor() =>
      starred(() => unary().exp, Factor.new, {TT.STAR, TT.SLASH});
  Unary unary() => match({TT.MINUS, TT.BANG})
      ? Unary.base(tokenType.and(() => eat), unary())
      : Unary.primary(primary());
  get logit => [current, token.string].log;
  Primary primary() {
    final callbacks = {
      TT.LEFT_PAREN: () {
        eat;
        final exp = Primary.grouping(expression());
        if (!match({TT.RIGHT_PAREN})) {
          report("Expected ) ${token.string}");
        }
        return exp;
      },
      TT.STRING: () => Primary.string(literal),
      TT.NUMBER: () => Primary.number(literal),
      TT.FALSE: () => Primary.boolean(false),
      TT.TRUE: () => Primary.boolean(true),
      TT.NIL: () => Primary.nil()
    };
    if (match(callbacks.keys)) {
      final value = callbacks[tokenType]!();
      eat;
      return value;
    }
    report("Unexpected token ${token.string}");
    return Primary.nil();
  }

  T starred<T, C extends Expression>(C Function() maker,
      T Function(C c, [Star<C> star]) creator, Set<TT> tokens) {
    var c = maker();
    final pieces = <Tuple2<TT, C>>[];

    while (match(tokens)) {
      final tt = tokenType;
      eat;
      pieces.add(tt.tupe(maker()));
    }
    return creator(c, pieces);
  }

  bool match(Iterable<TT> tokens) => tokens.contains(tokenType);
  TT get tokenType => token.tokenType;
  dynamic get literal => token.literal;
  Token get token => tokens[current];
  int current = 0;
  get eat => current++;
}
