import 'package:jlox/interpreter.dart';
import 'package:test/test.dart';
import 'helpers.dart';

void main() {
  test("true", 'true'.interpreted.shouldBe(true));
  test("1", '1'.interpreted.shouldBe(1));
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
  test("!0", '!0'.interpreted.shouldBe(true));
  test("!1", '!1'.interpreted.shouldBe(false));
  test("!true", '!true'.interpreted.shouldBe(false));
  test("!false", '!false'.interpreted.shouldBe(true));
  test('!"yo"', '!"yo"'.interpreted.shouldBe(false));
  test('!""', '!""'.interpreted.shouldBe(true));
  test('!!""', '!!""'.interpreted.shouldBe(false));
  test('!!"yo"', '!!"yo"'.interpreted.shouldBe(true));
  test('"hi " + "you"', '"hi " + "you"'.interpreted.shouldBe('hi you'));
  test('two vars', () => expect('var x = 3; var y = 5 + x'.interpret['y'], 8));
}

extension on String {
  Object? get interpreted => 'var x = $this'.interpret['x'];
}
