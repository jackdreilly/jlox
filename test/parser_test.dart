import 'dart:io';

import 'package:jlox/base.dart';
import 'package:jlox/errors.dart';
import 'package:jlox/expression.dart';
import 'package:jlox/parser.dart';
import 'package:jlox/statement.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  test(
      'fib',
      () => 'fib'.prog.parse.pretty.equals('''
fun fib(n) {
if ((< n 2)) {
return 1
}
return (+ fib((- n 1)) fib((- n 2)))
}
'''
          .trim()));
  test(
      'a(b,c)()(d,e,f)',
      () => ('a(b,c)()(d,e,f)'.parse.first as ExpressionStatement)
          .expression
          .equals(isA<Invocation>()));
  test('a(b,c)()(d,e,f)',
      () => 'a(b,c)()(d,e,f)'.parse.pretty.equals('a(b,c)()(d,e,f)'));
  test('return value fail', 'return 3'.fails);
  test('return fail', 'return'.fails);
  test(
      'fun return value',
      () => 'fun x() {return;}'.parse.pretty.equals('''
fun x() {
return
}
'''
          .trim()));
  test(
      'fun return',
      () => 'fun x() {return x}'.parse.pretty.equals('''
fun x() {
return x
}
'''
          .trim()));
  test('fun', () => 'fun x() x'.parse.pretty.equals('fun x() x'));
  test('break good for brace', 'for (;;) {break}'.succeeds);
  test('break good for', 'for (;;) break'.succeeds);
  test('break good while brace', 'while (true) {break}'.succeeds);
  test('break good while', 'while (true) break'.succeeds);
  test('break count bad', 'break_count_bad'.prog.fails);
  test('break count', 'break_count'.prog.succeeds);
  test('break bad', 'break'.fails);
  test(
      'for',
      () => 'for'.prog.parse.pretty.equals('''
var j
for (var i = 0;(< i 10);i = (+ i 1)) {
j = (* i 2)
}
j
'''
          .trim()));
  test('for(1;1;1) 1',
      () => 'for(1;1;1) 1'.parse.pretty.equals('for (1;1;1) 1'));
  test('for(;;1) 1', () => 'for(;;1) 1'.parse.pretty.equals('for (;;1) 1'));
  test('for(;1;) 1', () => 'for(;1;) 1'.parse.pretty.equals('for (;1;) 1'));
  test('for(1;1;) 1', () => 'for(1;1;) 1'.parse.pretty.equals('for (1;1;) 1'));
  test('for(1;;) 1', () => 'for(1;;) 1'.parse.pretty.equals('for (1;;) 1'));
  test('for(;;) 1', () => 'for(;;) 1'.parse.pretty.equals('for (;;) 1'));
  test('1 or 1', () => '1 or 1'.parse.pretty.equals('(or 1 1)'));
  test('1 and 1', () => '1 and 1'.parse.pretty.equals('(and 1 1)'));
  test('1 and 2 and 3',
      () => '1 and 2 and 3'.parse.pretty.equals('(and (and 1 2) 3)'));
  test('1 and 2 or 3',
      () => '1 and 2 or 3'.parse.pretty.equals('(or (and 1 2) 3)'));
  test('1 or 2 and 3',
      () => '1 or 2 and 3'.parse.pretty.equals('(or 1 (and 2 3))'));
  test('{}', () => '{}'.parse.pretty.equals('{\n\n}'));
  test(
      'x;{x;{{{x;}{y;}}3;}y + 3;z;}t;',
      () => 'x;{x;{{{x;}{y;}}3;}y + 3;z;}t;'.parse.pretty.equals('''
x
{
x
{
{
{
x
}
{
y
}
}
3
}
(+ y 3)
z
}
t'''
          .trim()));
  test('x = y = 3', () => 'x = y = 3'.parse.pretty.equals('x = y = 3'));
  test('x = 3', () => 'x = 3'.parse.pretty.equals('x = 3'));
  test('empty', () {
    hadError = false;
    expect(''.parse, isEmpty);
    expect(hadError, false);
  });
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
  test('1;', () => '1;'.parse.pretty.equals('1'));
  test('1;2', () => '1;2'.parse.pretty.equals('1\n2'));
  test('1;2;', () => '1;2;'.parse.pretty.equals('1\n2'));
  test('print', () => 'print 3'.parse.pretty.equals('print 3'));
  test('var', () => 'var x = 3'.parse.pretty.equals('var x = 3'));
  test('exp', () => '22'.parse.pretty.equals('22'));
  test('while', () => 'while (3) 4'.parse.pretty.equals('while (3) 4'));
  test('if', () => 'if (3) 4'.parse.pretty.equals('if (3) 4'));
  test(
      'if',
      () => '''
if (
  3 + 3,
  432,
  3 ? 1 : 2
) {
  3;
  4;
  5;
}'''
          .parse
          .pretty
          .equals('''if ((, (, (+ 3 3) 432) (3 ? 1 : 2))) {
3
4
5
}'''));
}

extension on String {
  fails() {
    myStderr = IOSink(FakeStreamConsumer());
    hadError = false;
    parse;
    expect(hadError, true);
    hadError = false;
  }

  succeeds() {
    hadError = false;
    parse;
    expect(hadError, false);
  }
}
