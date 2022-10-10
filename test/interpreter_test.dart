import 'package:jlox/interpreter.dart';
import 'package:test/test.dart';
import 'helpers.dart';

void main() {
  test("true", 'true'.interpret.shouldBe(true));
  test("1", '1'.interpret.shouldBe(1));
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
  test("!0", '!0'.interpret.shouldBe(true));
  test("!1", '!1'.interpret.shouldBe(false));
  test("!true", '!true'.interpret.shouldBe(false));
  test("!false", '!false'.interpret.shouldBe(true));
  test('!"yo"', '!"yo"'.interpret.shouldBe(false));
  test('!""', '!""'.interpret.shouldBe(true));
  test('!!""', '!!""'.interpret.shouldBe(false));
  test('!!"yo"', '!!"yo"'.interpret.shouldBe(true));
  test('"hi " + "you"', '"hi " + "you"'.interpret.shouldBe('hi you'));
}
