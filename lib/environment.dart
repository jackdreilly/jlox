import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlox/token.dart';

import 'base.dart';

part 'environment.freezed.dart';

typedef State = Map<String, VariableValue>;

@freezed
class VariableValue with _$VariableValue {
  const factory VariableValue.present(value) = Present;
  const factory VariableValue.absent() = Absent;
}

const sentinel = Object();

class Environment {
  final List<State> states;
  Environment([List<State>? states]) : states = states ?? [{}];
  Environment get clone => Environment(states.list);
  State get state => states.last;
  get push => states.add({});
  get pop => states.removeLast();
  assign(String key, value) => find(key, (state) {
        state[key] = VariableValue.present(value);
        return value;
      });
  get(String key) => find(
      key,
      (state) => state[key]?.when(
            present: id,
            absent: () => throw UnitializedValueError(key),
          ));
  void declare(String key, Object? value) => state[key] = value.wrap;
  void define(String key) => state[key] = VariableValue.absent();
  T find<T>(String key, T Function(State state) callback) {
    for (final state in states.reversed) {
      if (state.containsKey(key)) {
        return callback(state);
      }
    }
    throw MissingVariableError(key);
  }
}

extension on Object? {
  VariableValue get wrap => VariableValue.present(this);
}

class UnitializedValueError extends RuntimeError {
  final String key;

  UnitializedValueError(this.key)
      : super('Uninitialized variable access for $key');
}

class MissingVariableError extends RuntimeError {
  final String variableName;
  MissingVariableError(this.variableName)
      : super('Undefined variable $variableName');
}
