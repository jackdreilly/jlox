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

extension OpExt on Token {
  op(Object? a, [Object? b]) => {
        TT.MINUS: (a, b) => a - b,
        TT.PLUS: (a, b) => a + b,
        TT.SLASH: (a, b) => a / b,
        TT.STAR: (a, b) => a * b,
        TT.BANG: (Object? a, Object? b) => !(a.truth),
        TT.BANG_EQUAL: (a, b) => a != b,
        TT.EQUAL_EQUAL: (a, b) => a == b,
        TT.GREATER: (a, b) => a > b,
        TT.GREATER_EQUAL: (a, b) => a >= b,
        TT.LESS: (a, b) => a < b,
        TT.LESS_EQUAL: (a, b) => a <= b,
        TT.COMMA: (a, b) => b,
      }[tokenType]
          ?.call(a, b);
}
