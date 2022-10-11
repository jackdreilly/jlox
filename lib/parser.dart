import 'package:jlox/base.dart';
import 'package:jlox/errors.dart';
import 'package:jlox/token.dart';

import 'expression.dart';
import 'scanner.dart';
import 'statement.dart';
import 'token_type.dart';

extension Parser on Iterable<Token> {
  Program get parse => _Parser(list).parse;
}

extension ParserString on String {
  Program get parse => scan.parse;
}

class _Parser {
  final List<Token> tokens;
  _Parser(this.tokens);

  Program get parse {
    try {
      return program();
    } on ParseError {
      return [];
    }
  }

  expect(TT expected) {
    if (eat.tokenType != expected) {
      fail("Expected ${expected.string}: got ${previous.string}");
    }
  }

  Token get previous => tokens[current - 1];

  Program program() {
    if (match({TT.SEMICOLON})) {
      eat;
    }
    if (match({TT.EOF})) {
      return [];
    }
    return [statement(), ...program()];
  }

  Statement statement() {
    switch (tokenType) {
      case TT.VAR:
        expect(TT.VAR);
        return Statement.assignment(
            variable: eat.and(() => expect(TT.EQUAL)),
            expression: expression());
      case TT.PRINT:
        eat;
        return Statement.print(expression());
      default:
        return Statement.expression(expression());
    }
  }

  Expression expression() => comma();
  Expression comma() => starred(ternary, {TT.COMMA});
  Expression ternary() {
    final predicate = equality();
    if (match({TT.QUESTION_MARK})) {
      eat;
      final yes = ternary();
      expect(TT.COLON);
      return Expression.ternary(
        predicate: predicate,
        yes: yes,
        no: ternary(),
      );
    }
    return predicate;
  }

  Expression equality() => starred(comparison, {TT.BANG_EQUAL, TT.EQUAL_EQUAL});
  Expression comparison() =>
      starred(term, {TT.LESS, TT.GREATER, TT.LESS_EQUAL, TT.GREATER_EQUAL});
  Expression term() => starred(factor, {TT.PLUS, TT.MINUS});
  Expression factor() => starred(unary, {TT.STAR, TT.SLASH});
  Expression unary() => match({TT.MINUS, TT.BANG})
      ? Expression.unary(token: token.and(() => eat), expression: unary())
      : primary();
  Expression primary() {
    final maybeExpression = token.expression;
    if (maybeExpression != null) {
      eat;
      return maybeExpression;
    }
    if (match({TT.LEFT_PAREN})) {
      eat;
      final grouping = Expression.grouping(expression());
      expect(TT.RIGHT_PAREN);
      return grouping;
    }
    fail("Unexpected token ${token.string}");
    return Expression.literal(null);
  }

  fail(String message) {
    report(message);
    throw ParseError();
  }

  Expression starred(Expression Function() maker, Set<TT> tokens) {
    Expression c = maker();

    while (match(tokens)) {
      c = Expression.binary(
          token: token.and(() => eat), left: c, right: maker());
    }
    return c;
  }

  bool match(Iterable<TT> tokens) => tokens.contains(tokenType);
  TT get tokenType => token.tokenType;
  dynamic get literal => token.literal;
  Token get token => tokens[current];
  int current = 0;
  Token get eat => token.and(() => current++);
}

class ParseError extends Error {}
