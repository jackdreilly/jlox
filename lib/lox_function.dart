import 'package:jlox/token.dart';

class LoxFunction {
  final Object? Function(List arguments) call;
  final Token functionName;
  LoxFunction(this.call, this.functionName);

  @override
  String toString() =>
      '<FUN ${functionName.lexeme} line: ${functionName.line}>';
}

extension LFExt on Object? Function(List arguments) {
  LoxFunction loxFunction(Token functionName) =>
      LoxFunction(this, functionName);
}
