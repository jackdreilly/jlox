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
  const factory EnvironmentKey.tokenType(TT tokenType) = TokenTypeKey;
  @override
  String toString() => when(
      identifier: (name, line, position) => '[$line:$position] $scopeKey',
      tokenType: (_) => scopeKey);
}

typedef ScopeKey = String;

extension EKey on EnvironmentKey {
  ScopeKey get scopeKey => when(
      identifier: (name, line, position) => name,
      tokenType: (tokenType) => tokenType.string);
}

extension EKeyToken on Token {
  EnvironmentKey get key => tokenType == TT.IDENTIFIER
      ? EnvironmentKey.identifier(name: lexeme, line: line, position: position)
      : tokenType.key;
}

extension on TT {
  EnvironmentKey get key => EnvironmentKey.tokenType(this);
}

final thisKey = TT.THIS.key;
final superKey = TT.SUPER.key;
