import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlox/base.dart';
import 'package:jlox/environment.dart';
import 'package:jlox/environment_key.dart';
import 'package:jlox/expression.dart';
import 'package:jlox/token.dart';

import 'interpreter.dart';

part 'lox_function.freezed.dart';

mixin LoxCallable {
  Object? call(List<dynamic> arguments);
}

class _Wrapper implements LoxCallable {
  final Object? Function(List<dynamic> arguments) caller;

  _Wrapper(this.caller);
  @override
  Object? call(List arguments) => caller(arguments);
}

extension CallableExtension on Object? Function(List<dynamic> arguments) {
  LoxCallable get callable => _Wrapper(this);
}

@freezed
class LoxFunction with _$LoxFunction implements LoxCallable {
  const LoxFunction._();
  const factory LoxFunction(
      {required Interpreter interpreter,
      required FunctionExpression function,
      required Environment environment}) = LoxFunctionConstructor;
  Token get token => function.nameToken;
  Token get functionName => token;

  @override
  String toString() =>
      '<FUN ${functionName.lexeme} line: ${functionName.line}>';

  @override
  Object? call(List arguments) => interpreter.scoped(
        () {
          tag("j1m")
              .function
              .parameters
              .tag("j1p")
              .zip(arguments.tag("j1a"))
              .forEach((element) =>
                  environment.declare(element.item1.key, element.item2));
          ['CALLING', token.lexeme, token.line].unwords.log;
          environment.debug;
          return interpreter
              .exiting(() => interpreter.interpretStatement(function.body));
        },
        environment,
      );
}
