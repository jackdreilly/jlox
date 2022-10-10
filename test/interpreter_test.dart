import 'package:jlox/interpreter.dart';
import 'package:test/test.dart';

void main() {
  test("true", () => expect("true".interpret, true));
  test("1", () => expect("1".interpret, 1));
  test('"yo"', () => expect('"yo"'.interpret, "yo"));
  test('nil', () => expect('nil'.interpret, null));
  test('1 + 2', () => expect('1 + 2'.interpret, 3));
  test('5 < 3 ? 12 : 6 < 4 ? 3 : 1',
      () => expect('5 < 3 ? 12 : 6 < 4 ? 3 : 1'.interpret, 1));
  test('3 == 4', () => expect('3 == 4'.interpret, false));
  test('3 != 4', () => expect('3 != 4'.interpret, true));
  test('3 == 3', () => expect('3 == 3'.interpret, true));
  test('3 != 3', () => expect('3 != 3'.interpret, false));
  test('1,2,3', () => expect('1,2,3'.interpret, 3));
}
