import 'package:jlox/environment.dart';
import 'package:test/test.dart';

void main() {
  test("env", () {
    final env = Environment();
    env['x'] = 3;
    expect(env['x'], 3);
    env['x'] = 5;
    expect(env['x'], 5);
    expect(() => env['y'], throwsA(isA<MissingVariableError>()));
  });
}
