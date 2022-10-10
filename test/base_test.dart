import 'package:jlox/base.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  test('calculate', () {
    'a'.char.equals(97);
    'b'.char.equals(98);
    'a'.isAlpha.equals(true);
    'b'.isAlpha.equals(true);
    '_'.isAlpha.equals(true);
    '3'.isAlpha.equals(false);
    '3'.isSpace.equals(false);
    ' '.isSpace.equals(true);
    '\n'.isSpace.equals(true);
    '\n\n\n23 23 2\n 23 '.count('\n').equals(4);
  });
}
