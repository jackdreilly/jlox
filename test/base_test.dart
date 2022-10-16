import 'package:jlox/base.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  test('a', () => 'a'.char.equals(97));
  test('b', () => 'b'.char.equals(98));
  test('a', () => 'a'.isAlpha.equals(true));
  test('b', () => 'b'.isAlpha.equals(true));
  test('_', () => '_'.isAlpha.equals(true));
  test('3', () => '3'.isAlpha.equals(false));
  test('3', () => '3'.isSpace.equals(false));
  test(' ', () => ' '.isSpace.equals(true));
  test('isspace', () => '\n'.isSpace.equals(true));
  test('count', () => '\n\n\n23 23 2\n 23 '.count('\n').equals(4));
}
