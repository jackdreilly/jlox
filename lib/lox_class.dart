import 'package:jlox/environment.dart';
import 'package:jlox/environment_key.dart';
import 'package:jlox/lox_function.dart';
import 'package:jlox/lox_instance.dart';
import 'package:jlox/token.dart';

class LoxClass implements LoxCallable {
  final Token name;
  final LoxClass? superClass;
  final Map<String, LoxFunction> methods;
  LoxClass(this.name, this.superClass, List<LoxFunction> methods)
      : methods = Map.fromEntries(
            methods.map((e) => MapEntry(e.functionName.lexeme, e)));
  @override
  String toString() => '<class ${name.lexeme}>';

  @override
  LoxInstance call(List arguments) {
    final instance = LoxInstance(this, arguments);
    final method = methods['init']?.functionName;
    if (method != null) {
      instance.getMethod(method).call(arguments);
    }
    return instance;
  }

  LoxFunction getMethod(Token token) =>
      methods[token.lexeme] ?? superClass?.getMethod(token) ?? fail(token);
  LoxFunction fail(token) => throw MissingEnvironmentKeyError(token.key);
}
