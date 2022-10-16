import 'package:jlox/base.dart';
import 'package:jlox/environment_key.dart';
import 'package:jlox/lox_instance.dart';
import 'package:jlox/lox_class.dart';
import 'package:jlox/token.dart';

import 'lox_fieldable.dart';

class LoxSuper implements LoxFieldable {
  final LoxInstance loxInstance;
  final LoxClass loxClass;

  LoxSuper(this.loxInstance, this.loxClass);

  @override
  Object? getField(Token token) {
    final method = loxClass.getMethod(token);
    if (method == null) {
      return loxClass.fail(token);
    }
    final newEnvironment = method.environment
        .clone(['super', loxClass, loxInstance, token.key.scopeKey].unwords);
    newEnvironment.push;
    newEnvironment.declare(thisKey, loxInstance);
    return method.copyWith(environment: newEnvironment);
  }
}
