import 'package:jlox/base.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  test('a', 'a'.char.shouldBe(97));
  test('b', 'b'.char.shouldBe(98));
  test('a', 'a'.isAlpha.shouldBe(true));
  test('b', 'b'.isAlpha.shouldBe(true));
  test('_', '_'.isAlpha.shouldBe(true));
  test('3', '3'.isAlpha.shouldBe(false));
  test('3', '3'.isSpace.shouldBe(false));
  test(' ', ' '.isSpace.shouldBe(true));
  test('isspace', '\n'.isSpace.shouldBe(true));
  test('count', '\n\n\n23 23 2\n 23 '.count('\n').shouldBe(4));
}
