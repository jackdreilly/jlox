import 'package:jlox/expression.dart';
import 'package:jlox/parser.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  test('1', '1'.parse.shouldBe(1.expression));
  test('1+2 pretty', '1+2'.parse.pretty.shouldBe('(+ 1 2)'));
  test('1+2', '1+2'.parse.shouldBe(1.plus(2.expression)));
  test(
      '!("hi" == (5 + 3 * 2))',
      '!("hi" == (5 + 3 * 2))'
          .parse
          .pretty
          .shouldBe('(! (group (== "hi" (group (+ 5 (* 3 2))))))'));
  test(
      '!("hi" == (3 * 2 + 5))',
      '!("hi" == (3 * 2 + 5))'
          .parse
          .pretty
          .shouldBe('(! (group (== "hi" (group (+ (* 3 2) 5)))))'));
}
