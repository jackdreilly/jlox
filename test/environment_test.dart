import 'package:jlox/environment.dart';
import 'package:jlox/token.dart';
import 'package:jlox/token_type.dart';
import 'package:test/test.dart';

extension on String {
  Token get t =>
      Token(tokenType: TT.IDENTIFIER, lexeme: this, literal: this, line: 1);
}

void main() {
  test("env", () {
    final env = Environment();
    final y = 'y'.t;
    final z = 'z'.t;
    expect(() => env.get(y), throwsA(isA<MissingTokenError>()));
    expect(() => env.assign(y, 3), throwsA(isA<MissingTokenError>()));
    env.declare(y, 3);
    env.declare(z, 10);
    expect(env.get(y), 3);
    expect(env.assign(y, 5), 5);
    expect(env.get(y), 5);
    env.push;
    expect(env.get(y), 5);
    expect(env.get(z), 10);
    final next = 'next'.t;
    env.declare(next, 2);
    expect(env.get(next), 2);
    expect(env.assign(next, 3), 3);
    expect(env.get(next), 3);
    expect(env.assign(y, 1), 1);
    env.declare(z, 100);
    expect(env.get(z), 100);
    env.pop;
    expect(env.get(y), 1);
    expect(() => env.get(next), throwsA(isA<MissingTokenError>()));
    expect(env.get(z), 10);
  });
}
