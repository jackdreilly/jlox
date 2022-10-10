import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlox/base.dart';

import 'token_type.dart';

part 'token.freezed.dart';

@freezed
class Token with _$Token {
  const factory Token({
    required TT tokenType,
    required String lexeme,
    required dynamic literal,
    required int line,
  }) = _Token;
}

extension TokenString on Token {
  String get string => [tokenType.name, lexeme].unwords;
}
