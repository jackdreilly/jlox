import 'package:jlox/base.dart';
import 'package:jlox/expression.dart';
import 'package:jlox/token.dart';
import 'package:jlox/token_type.dart';
import 'package:test/test.dart';

import 'helpers.dart';

typedef E = Expression;

extension on TT {
  Token get fakeToken =>
      Token(tokenType: this, lexeme: "", literal: null, line: 0);
}

extension on num {
  Expression get neg =>
      Expression.unary(token: TT.MINUS.fakeToken, expression: literal);
  Expression plus(num right) => Expression.binary(
      token: TT.PLUS.fakeToken, left: literal, right: right.literal);
  Expression minus(num right) => Expression.binary(
      token: TT.MINUS.fakeToken, left: literal, right: right.literal);
}

extension on Expression {
  Expression times(Expression right) =>
      Expression.binary(token: TT.STAR.fakeToken, left: this, right: right);
}

void main() {
  test(
      'x = 3',
      () => Expression.assignment(
              token: Token(
                  lexeme: 'x', literal: 'x', line: 0, tokenType: TT.IDENTIFIER),
              expression: 3.literal)
          .pretty
          .equals('x = 3'));
  test(
      'x = y = 3',
      () => Expression.assignment(
              token: Token(
                  lexeme: 'x', literal: 'x', line: 0, tokenType: TT.IDENTIFIER),
              expression: Expression.assignment(
                  token: Token(
                      lexeme: 'y',
                      literal: 'y',
                      line: 0,
                      tokenType: TT.IDENTIFIER),
                  expression: 3.literal))
          .pretty
          .equals('x = y = 3'));
  test('x', () => 'x'.identifier.pretty.equals('x'));
  test('xxx', () => 'xxx'.identifier.pretty.equals('xxx'));
  test('1 exp', 1.literal.shouldBe(Expression.literal(1)));
  test("a", "a".literal.pretty.shouldBe('"a"'));
  test("(a)", "a".literal.grouping.pretty.shouldBe('(group "a")'));
  test('-123', 123.neg.pretty.shouldBe('(- 123)'));
  test(
      'rpn', 1.plus(2).times(4.minus(3)).rpn.unwords.shouldBe('1 2 + 4 3 - *'));
  test(
      '(* (- 123) (group 45.67))',
      123
          .neg
          .times(45.67.literal.grouping)
          .pretty
          .shouldBe('(* (- 123) (group 45.67))'));
}

extension on String {
  Expression get identifier => Expression.variable(
      token: Token(
          lexeme: this, literal: this, tokenType: TT.IDENTIFIER, line: 0));
}
