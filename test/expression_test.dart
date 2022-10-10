import 'package:jlox/base.dart';
import 'package:jlox/expression.dart';
import 'package:test/test.dart';

import 'helpers.dart';

typedef E = Expression;

void main() {
  test(
      '1 exp',
      1.expression.shouldBe(Exp(Equality(Comparison(
          Term(Factor(UnaryExp(PrimaryValue(Primary.number(1))))))))));
  test("a", "a".primary.pretty.shouldBe('"a"'));
  test("(a)", "a".primary.grouping.pretty.shouldBe('(group "a")'));
  test('-123', 123.neg.pretty.shouldBe('(- 123)'));
  test('45 term', 45.term.pretty.shouldBe('45'));

  test(
      'rpn', 1.plus(2).times(4.minus(3)).rpn.unwords.shouldBe('1 2 + 4 3 - *'));
  test('(* (- 123) (group 45.67))',
      123.neg.times(45.67.term).pretty.shouldBe('(* (- 123) (group 45.67))'));
}
