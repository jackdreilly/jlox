import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlox/environment_key.dart';

import 'base.dart';
import 'token.dart';

part 'environment.freezed.dart';

typedef State = Map<EnvironmentKey, VariableValue>;

@freezed
class VariableValue with _$VariableValue {
  const factory VariableValue.present(value) = Present;
  const factory VariableValue.absent() = Absent;
}

extension on VariableValue {
  Object? get value => whenOrNull(present: (value) => value);
}

extension on State {
  Object? put(EnvironmentKey key, Object? value) =>
      (this[key] = value.wrap).value;
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
  Environment get debug {
    for (final iState in states.enumerate) {
      final indent = '  ' * iState.item1;
      (iState.item1 == 0
              ? [
                  '',
                  '=' * 10,
                  ['env:', description ?? "global", hashCode % 10000].unwords,
                  '=' * 10,
                  ''
                ].unlines
              : [indent, 'NEXT'].join(''))
          .log;
      for (final entry in iState.item2.entries) {
        [indent, entry.key, ': ', entry.value.value].join("").log;
      }
    }
    return this;
  }

  assign(EnvironmentKey key, Object? value) =>
      find(key, (state) => state.put(key, value));
  get(EnvironmentKey key) => find(
      key,
      (state) => state[key]?.when(
            present: id,
            absent: () => throw UninitializedValueError(key),
          ));
  void declare(EnvironmentKey key, Object? value) => state.put(key, value);
  void define(EnvironmentKey key) => state[key] = VariableValue.absent();
  T find<T>(EnvironmentKey key, T Function(State state) callback) {
    for (final state in states.reversed) {
      if (state.containsKey(key)) {
        return callback(state);
      }
    }
    throw MissingEnvironmentKeyError(key);
  }

  void swap(String key, Object? value) =>
      state[state.keys.firstWhere((element) => element.scopeKey == key)] =
          value.wrap;
}

extension on Object? {
  VariableValue get wrap => VariableValue.present(this);
}

class UninitializedValueError extends RuntimeError {
  final EnvironmentKey environmentKey;

  UninitializedValueError(this.environmentKey)
      : super('Uninitialized variable access for $environmentKey');
}

class MissingEnvironmentKeyError extends RuntimeError {
  final EnvironmentKey environmentKey;
  MissingEnvironmentKeyError(this.environmentKey)
      : super('Missing var $environmentKey');
}
