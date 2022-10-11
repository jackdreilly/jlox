import 'package:jlox/environment.dart';
import 'package:test/test.dart';

void main() {
  test("env", () {
    final env = Environment();
    expect(() => env.get('y'), throwsA(isA<MissingVariableError>()));
    expect(() => env.assign('y', 3), throwsA(isA<MissingVariableError>()));
    env.declare('y', 3);
    env.declare('z', 10);
    expect(env.get('y'), 3);
    expect(env.assign('y', 5), 5);
    expect(env.get('y'), 5);
    env.push;
    expect(env.get('y'), 5);
    expect(env.get('z'), 10);
    env.declare('next', 2);
    expect(env.get('next'), 2);
    expect(env.assign('next', 3), 3);
    expect(env.get('next'), 3);
    expect(env.assign('y', 1), 1);
    env.declare('z', 100);
    expect(env.get('z'), 100);
    env.pop;
    expect(env.get('y'), 1);
    expect(() => env.get('next'), throwsA(isA<MissingVariableError>()));
    expect(env.get('z'), 10);
  });
}
