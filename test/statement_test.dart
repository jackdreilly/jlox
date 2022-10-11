import 'package:test/test.dart';
import 'package:jlox/parser.dart';
import 'package:jlox/statement.dart';

void main() {
  test('print', 'print 3'.shouldBe('print 3'));
  test('var', 'var x = 3'.shouldBe('var x = 3'));
  test('exp', '22'.shouldBe('22'));
}

extension on String {
  shouldBe(String expected) => () => expect(parse.pretty, expected);
}
