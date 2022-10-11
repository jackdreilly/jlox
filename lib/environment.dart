import 'package:jlox/token.dart';

typedef State = Map<String, dynamic>;

class Environment {
  final List<State> states = [{}];
  State get state => states.last;
  get push => states.add({});
  get pop => states.removeLast();
  assign(String key, value) => find(key, (state) {
        state[key] = value;
        return value;
      });
  get(String key) => find(key, (state) => state[key]);
  void declare(String key, value) => state[key] = value;
  T find<T>(String key, T Function(State state) callback) {
    for (final state in states.reversed) {
      if (state.containsKey(key)) {
        return callback(state);
      }
    }
    throw MissingVariableError(key);
  }
}

class MissingVariableError extends RuntimeError {
  final String variableName;
  MissingVariableError(this.variableName)
      : super('Undefined variable $variableName');
}
