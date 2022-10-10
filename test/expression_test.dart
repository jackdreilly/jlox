import 'package:jlox/base.dart';
import 'package:jlox/expression.dart';
import 'package:test/test.dart';

import 'helpers.dart';

typedef E = Expression;

void main() {
  test('1 exp', 1.expression.shouldBe(Expression.literal(1)));
  test("a", "a".expression.pretty.shouldBe('"a"'));
  test("(a)", "a".expression.grouping.pretty.shouldBe('(group "a")'));
  test('-123', 123.neg.pretty.shouldBe('(- 123)'));
  test(
      'rpn',
      1
          .plus(2.expression)
          .times(4.minus(3.expression))
          .rpn
          .unwords
          .shouldBe('1 2 + 4 3 - *'));
  test(
      '(* (- 123) (group 45.67))',
      123
          .neg
          .times(45.67.expression.grouping)
          .pretty
          .shouldBe('(* (- 123) (group 45.67))'));
}
