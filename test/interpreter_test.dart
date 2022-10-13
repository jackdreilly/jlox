import 'package:jlox/environment.dart';
import 'package:jlox/errors.dart';
import 'package:jlox/interpreter.dart';
import 'package:jlox/parser.dart';
import 'package:jlox/token.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  test('min rec', () => 'min_rec'.prog.interpreted.equals(1));
  test(
      'cons',
      () => 'cons'
          .prog
          .interpreted
          .equals('ravvadaravvada, reillyreilly, kavvadakavvada'));
  test('fib eval ternary', () => 'fib_eval_ternary'.prog.interpreted.equals(5));
  test('fib eval', () => 'fib_eval'.prog.interpreted.equals(5));
  test('subber',
      () => 'fun subber(b,c){return b - c;}subber(8,5);'.interpreted.equals(3));
  test('break two levels', () => 'break_two'.prog.interpreted.equals(6));
  test('break basic', () => 'break'.prog.interpreted.equals(3));
  test('for scoped 3', 'for_scoped_3'.prog.missing);
  test('for scoped 2', () => 'for_scoped_2'.prog.interpreted.equals(3));
  test('for scoped 1', () => 'for_scoped_1'.prog.interpreted.equals(3));
  test('for', () => 'for'.prog.interpreted.equals(18));
  test('while basic', () => 'while'.prog.interpreted.equals(10));
  test('while scoped', () => 'while_scoped'.prog.interpreted.equals(11));
  test('orand', () => 'orand'.prog.interpreted.equals(100));
  test('1 or 1', () => '1 or 1'.interpreted.equals(1));
  test('0 or 1', () => '0 or 1'.interpreted.equals(1));
  test('0 or 0', () => '0 or 0'.interpreted.equals(0));
  test('0 or 0 or 1', () => '0 or 0 or 1'.interpreted.equals(1));
  test('1 and 0', () => '1 and 0'.interpreted.equals(0));
  test('1 and 1', () => '1 and 1'.interpreted.equals(1));
  test('0 and 1', () => '0 and 1'.interpreted.equals(0));
  test('1 or (3 < "asdf")', () => '1 or (3 < "asdf")'.interpreted.equals(1));
  test('1 and (3 < "asdf")', () {
    expect(
        () => '1 and (3 < "asdf")'.interpreted, throwsA(isA<RuntimeError>()));
    hadError = false;
  });
  test('ifno basic', () => 'ifno'.prog.interpreted.equals(1));
  test('ifyes', () => 'ifyes'.prog.interpreted.equals(5));
  test('ifelseno', () => 'ifelseno'.prog.interpreted.equals(6));
  test('ifelseyes', () => 'ifelseyes'.prog.interpreted.equals(5));
  test('var a', () {
    hadError = false;
    'var a'.interpreted.equals(isNull);
    hadError.equals(false);
  });
  test('access uninit', () {
    hadError = false;
    expect(() => 'var a; a'.interpreted, throwsA(isA<UnitializedValueError>()));
    hadError.equals(true);
    hadError = false;
  });
  test('brace', () => 'brace'.prog.interpreted.equals(2799360));
  test('semi', () => '3;'.interpreted.equals(3));
  test('semi', () => '3;4'.interpreted.equals(4));
  test('var semi', () {
    hadError = false;
    'var x = 3;'.interpreted.equals(isNull);
    hadError.equals(false);
  });
  test("true", () => 'true'.interpreted.equals(true));
  test("1", () => '1'.interpreted.equals(1));
  test('"yo"', () => expect('"yo"'.interpreted, "yo"));
  test('nil', () => expect('nil'.interpreted, null));
  test('1 + 2', () => expect('1 + 2'.interpreted, 3));
  test('5 < 3 ? 12 : 6 < 4 ? 3 : 1',
      () => expect('5 < 3 ? 12 : 6 < 4 ? 3 : 1'.interpreted, 1));
  test('3 == 4', () => expect('3 == 4'.interpreted, false));
  test('3 != 4', () => expect('3 != 4'.interpreted, true));
  test('3 == 3', () => expect('3 == 3'.interpreted, true));
  test('3 != 3', () => expect('3 != 3'.interpreted, false));
  test('1,2,3', () => expect('1,2,3'.interpreted, 3));
  test("!0", () => '!0'.interpreted.equals(true));
  test("!1", () => '!1'.interpreted.equals(false));
  test("!true", () => '!true'.interpreted.equals(false));
  test("!false", () => '!false'.interpreted.equals(true));
  test('!"yo"', () => '!"yo"'.interpreted.equals(false));
  test('!""', () => '!""'.interpreted.equals(true));
  test('!!""', () => '!!""'.interpreted.equals(false));
  test('!!"yo"', () => '!!"yo"'.interpreted.equals(true));
  test('"hi " + "you"', () => '"hi " + "you"'.interpreted.equals('hi you'));
  test('empty', () {
    hadError = false;
    expect(''.interpreted, isNull);
    expect(hadError, false);
  });
  test('reassign x = 3', () => 'var x = 4; x = 3'.interpreted.equals(3));
  test('x missing', 'x'.missing);
  test('x = 3 missing', 'x = 3'.missing);
  test('y missing', 'var x = 3; y = 5'.missing);
}

extension on String {
  Object? get interpreted => Interpreter().interpret(parse);
  get missing =>
      () => expect(() => interpreted, throwsA(isA<MissingTokenError>()));
}
