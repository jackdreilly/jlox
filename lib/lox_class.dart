import 'package:jlox/environment.dart';
import 'package:jlox/environment_key.dart';
import 'package:jlox/lox_function.dart';
import 'package:jlox/lox_instance.dart';
import 'package:jlox/token.dart';

class LoxClass implements LoxCallable {
  final Token name;
  final Map<String, LoxFunction> methods;
  LoxClass(this.name, List<LoxFunction> methods)
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

  LoxFunction getMethod(Token token) {
    final result = methods[token.lexeme];
    if (result != null) {
      return result;
    }
    throw MissingEnvironmentKeyError(token.key);
  }
}
