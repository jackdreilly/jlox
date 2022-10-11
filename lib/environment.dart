import 'package:jlox/token.dart';

typedef State = Map<String, dynamic>;

class Environment {
  final State state = {};
  operator [](String variableName) {
    if (state.containsKey(variableName)) {
      return state[variableName];
    }
    throw MissingVariableError(variableName);
  }

  operator []=(String variableName, value) => state[variableName] = value;
}

class MissingVariableError extends RuntimeError {
  final String variableName;
  MissingVariableError(this.variableName)
      : super('Undefined variable $variableName');
}
