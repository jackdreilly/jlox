import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlox/token.dart';

import 'base.dart';

part 'environment.freezed.dart';

typedef State = Map<Token, VariableValue>;

@freezed
class VariableValue with _$VariableValue {
  const factory VariableValue.present(value) = Present;
  const factory VariableValue.absent() = Absent;
}

extension on VariableValue {
  Object? get value => whenOrNull(present: (value) => value);
}

extension on State {
  Object? put(Token key, Object? value) => (this[key] = value.wrap).value;
}

class Environment {
  final List<State> states;
  final Token? token;
  Environment([List<State>? states, this.token]) : states = states ?? [{}];
  Environment clone([Token? token]) => Environment(states.list, token);
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
              ['env:', token?.string ?? "unnamed"].unwords,
              '=' * 10,
              ''
            ].unlines
          : [indent, 'NEXT'].join(''));
      for (final entry in iState.item2.entries) {
        [indent, entry.key, ': ', entry.value.value].join("");
      }
    }
  }

  assign(Token key, Object? value) =>
      find(key, (state) => state.put(key, value));
  get(Token key) => find(
      key,
      (state) => state[key]?.when(
            present: id,
            absent: () => throw UninitializedValueError(key),
          ));
  void declare(Token key, Object? value) => state.put(key, value);
  void define(Token key) => state[key] = VariableValue.absent();
  T find<T>(Token key, T Function(State state) callback) {
    for (final state in states.reversed) {
      if (state.containsKey(key)) {
        return callback(state);
      }
    }
    throw MissingTokenError(key);
  }
}

extension on Object? {
  VariableValue get wrap => VariableValue.present(this);
}

class UninitializedValueError extends RuntimeError {
  final Token token;

  UninitializedValueError(this.token)
      : super('Uninitialized variable access for ${token.string}');
}

class MissingTokenError extends RuntimeError {
  final Token token;
  MissingTokenError(this.token) : super('Missing token ${token.string}');
}
