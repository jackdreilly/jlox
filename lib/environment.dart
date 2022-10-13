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

extension on VariableValue {
  Object? get value => whenOrNull(present: (value) => value);
}

const sentinel = Object();

extension on State {
  Object? put(String key, Object? value) => (this[key] = value.wrap).value;
}

class Environment {
  final List<State> states;
  final String? description;
  Environment([List<State>? states, this.description])
      : states = states ?? [{}];
  Environment clone([String? description]) =>
      Environment(states.list, description);
  State get state => states.last;
  get push => states.add({});
  get pop => states.removeLast();
  get debug {
    for (final iState in states.enumerate) {
      final indent = '  ' * iState.item1;
      (iState.item1 == 0
              ? [
                  '',
                  '=' * 10,
                  ['env:', description].unwords,
                  '=' * 10,
                  ''
                ].unlines
              : [indent, 'NEXT'].join(''))
          .log;
      for (final entry in iState.item2.entries) {
        [indent, entry.key, ': ', entry.value.value].join("").log;
      }
    }
  }

  assign(String key, Object? value) =>
      find(key, (state) => state.put(key, value));
  get(String key) => find(
      key,
      (state) => state[key]?.when(
            present: id,
            absent: () => throw UnitializedValueError(key),
          ));
  void declare(String key, Object? value) => state.put(key, value);
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
