import 'package:freezed_annotation/freezed_annotation.dart';

import 'token.dart';
import 'token_type.dart';

part 'environment_key.freezed.dart';

@freezed
class EnvironmentKey with _$EnvironmentKey {
  const EnvironmentKey._();
  const factory EnvironmentKey.identifier(
      {required String name,
      required int line,
      required int position}) = IdentifierKey;
  const factory EnvironmentKey.thisKey() = ThisKey;
  @override
  String toString() => when(
      identifier: (name, line, position) => '[$line:$position] $scopeKey',
      thisKey: () => scopeKey);
}

typedef ScopeKey = String;

extension EKey on EnvironmentKey {
  ScopeKey get scopeKey =>
      when(identifier: (name, line, position) => name, thisKey: () => 'this');
}

extension EKeyToken on Token {
  EnvironmentKey get key => tokenType == TT.THIS
      ? thisKey
      : EnvironmentKey.identifier(name: lexeme, line: line, position: position);
}

final thisKey = EnvironmentKey.thisKey();
