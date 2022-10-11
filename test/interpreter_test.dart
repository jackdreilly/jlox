import 'package:jlox/base.dart';
import 'package:jlox/environment.dart';
import 'package:jlox/errors.dart';
import 'package:jlox/interpreter.dart';
import 'package:jlox/parser.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  test('var a', () {
    'var a'.interpreted.equals(isNull);
    hadError.equals(false);
  });
  test('brace', () => 'brace'.prog.interpreted.equals(2799360));
  test('semi', () => '3;'.interpreted.equals(3));
  test('semi', () => '3;4'.interpreted.equals(4));
  test('semi', () => '3;4'.state.equals({}));
  test('var semi', () {
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
  test('two vars', () => expect('var x = 3; var y = 5 + x'.state['y'], 8));
  test('empty', () {
    hadError = false;
    expect(''.interpreted, isNull);
    expect(hadError, false);
  });
  test('reassign x = 3', () => 'var x = 4; x = 3'.interpreted.equals(3));
  test('x missing', 'x'.missing);
  test('x = 3 missing', 'x = 3'.missing);
  test('y missing', 'var x = 3; y = 5'.missing);
  test('var x = 3; var y = x = 5',
      () => 'var x = 3; var y = x = 5'.state == {'x': 5, 'y': 5});
}

extension on String {
  Object? get interpreted => Interpreter().interpret(parse);
  Map<String, dynamic> get state =>
      (Interpreter()..interpret(parse)).env.state.map((key, value) =>
          MapEntry(key, value.when(present: id, absent: () => null)));
  get missing =>
      () => expect(() => interpreted, throwsA(isA<MissingVariableError>()));
}
