import 'package:jlox/base.dart';
import 'package:jlox/parser.dart';
import 'package:jlox/resolver.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  wire;
  test(
      'resolver',
      'resolver'.shouldBe({
        ['a', 5, 1],
        ['showA', 8, 4],
        ['showA', 10, 4],
        ['z', 11, 2],
        ['x', 11, 8],
        ['y', 11, 10],
        ['z', 13, 2],
      }));
  test(
      'while',
      'while'.shouldBe({
        ['a', 2, 1],
        ['a', 3, 1],
        ['b', 4, 3],
        ['a', 4, 1],
        ['a', 6, 1],
      }));
  test(
      'brace',
      'brace'.shouldBe({
        ['x', 3, 1],
        ['x', 5, 1],
        ['x', 7, 1],
        ['y', 7, 3],
        ['x', 9, 1],
        ['z', 9, 7],
        ['z', 14, 7],
        ['y', 14, 12],
        ['x', 17, 1],
        ['z', 17, 7],
        ['x', 20, 1],
        ['y', 20, 3],
      }));
  test(
      'min_rec',
      'min_rec'.shouldBe({
        ['n', 2, 1],
        ['a', 4, 1],
      }));
}

extension on String {
  shouldBe(Set expected) => () => prog.parse.resolve.entries
      .where((element) => element.key.lexeme == element.value?.lexeme)
      .map((e) => [e.key.lexeme, e.key.line, e.value?.line])
      .toSet()
      .equals(expected);
}
