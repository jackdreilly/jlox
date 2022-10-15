import 'package:jlox/base.dart';
import 'package:jlox/environment.dart';
import 'package:jlox/environment_key.dart';
import 'package:jlox/token.dart';

import 'lox_class.dart';
import 'lox_function.dart';

class LoxInstance {
  final LoxClass loxClass;
  final List arguments;
  final Map<String, dynamic> fields = {};
  final Map<String, LoxFunction> methods = {};
  LoxInstance(this.loxClass, this.arguments);
  @override
  String toString() => '<instance ${loxClass.name.lexeme} ${hashCode % 1000}>';

  LoxFunction? getMethod(Token token) =>
      methods.putIfAbsent(token.key.scopeKey, () {
        final method = loxClass.getMethod(token);
        final newEnvironment =
            method.environment.clone([this, token.key.scopeKey].unwords);
        newEnvironment.push;
        newEnvironment.declare(thisKey, this);
        return method.copyWith(environment: newEnvironment);
      });
  getField(Token token) {
    final key = token.lexeme;
    if (fields.containsKey(key)) {
      return fields[key];
    }
    final method = getMethod(token);
    if (method != null) {
      return method;
    }
    throw MissingEnvironmentKeyError(token.key);
  }

  setProperty(Token identifier, Object? value) =>
      fields[identifier.lexeme] = value;
}
