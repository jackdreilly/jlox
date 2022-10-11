import 'package:jlox/expression.dart';
import 'package:jlox/parser.dart';
import 'package:jlox/statement.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  test("ternary A",
      () => 'true ? false : true'.parse.pretty.equals('(true ? false : true)'));
  test(
      "ternary comma",
      () => 'true ? false : true, 4 + 2, 1 ? 2 : 3'
          .parse
          .pretty
          .equals('(, (, (true ? false : true) (+ 4 2)) (1 ? 2 : 3))'));
  test(
      "nested ternary",
      () => '1 + 2 ? 3 + 4 : 5 + 6 ? 7 + 8 : 9 + 10'
          .parse
          .pretty
          .equals('((+ 1 2) ? (+ 3 4) : ((+ 5 6) ? (+ 7 8) : (+ 9 10)))'));
  test(
      "nested ternary ? ?",
      () => '1 + 2 ? 3 + 4 ? 5 + 6 : 7 + 8 : 9 + 10'
          .parse
          .pretty
          .equals('((+ 1 2) ? ((+ 3 4) ? (+ 5 6) : (+ 7 8)) : (+ 9 10))'));
  test("ternary",
      () => 'true ? false : true'.parse.pretty.equals('(true ? false : true)'));
  test('fail (', fails(() => '('.parse));
  test('fail ternary', fails(() => 'true ? false ? false'.parse));
  test('fail 3+', fails(() => '3 + '.parse));
  test('fail 3 + ==', fails(() => '3 + =='.parse));
  test('fail extra stuff', fails(() => '(3 + 3) =='.parse));
  test('1', () => '1'.parse.equals(1.literal.program));
  test('1+2 pretty', () => '1+2'.parse.pretty.equals('(+ 1 2)'));
  test(
      '!("hi" == (5 + 3 * 2))',
      () => '!("hi" == (5 + 3 * 2))'
          .parse
          .pretty
          .equals('(! (group (== "hi" (group (+ 5 (* 3 2))))))'));
  test(
      '!("hi" == (3 * 2 + 5))',
      () => '!("hi" == (3 * 2 + 5))'
          .parse
          .pretty
          .equals('(! (group (== "hi" (group (+ (* 3 2) 5)))))'));
  test(
      'comma',
      () => '1 + 2 * 3,2 + 3, 5 * 5 + 1'.parse.pretty.equals(
            '(, (, (+ 1 (* 2 3)) (+ 2 3)) (+ (* 5 5) 1))',
          ));
  test('1;', () => '1;'.parse.pretty.shouldBe('1'));
  test('1;2', () => '1;2'.parse.pretty.shouldBe('2'));
  test('1;2;', () => '1;2;'.parse.pretty.shouldBe('2'));
}
