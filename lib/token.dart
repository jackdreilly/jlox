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
  String get string =>
      [tokenType.string, lexeme, line, this.literal].withoutNulls.unwords;
}

extension OpExt on Token {
  op(Object? a, [Object? b]) => {
        TT.MINUS: (a, b) => n(a) - n(b),
        TT.PLUS: (a, b) {
          try {
            return n(a) + n(b);
          } on CheckTokenError {
            return s(a) + s(b);
          }
        },
        TT.SLASH: (a, b) => n(a) / n(b),
        TT.STAR: (a, b) => n(a) * n(b),
        TT.BANG: (Object? a, b) => !a.truth,
        TT.BANG_EQUAL: (a, b) => a != b,
        TT.EQUAL_EQUAL: (a, b) => a == b,
        TT.GREATER: (a, b) => n(a) > n(b),
        TT.GREATER_EQUAL: (a, b) => n(a) >= n(b),
        TT.LESS: (a, b) => n(a) < n(b),
        TT.LESS_EQUAL: (a, b) => n(a) <= n(b),
        TT.COMMA: (a, b) => b,
      }[tokenType]
          ?.call(a, b);
  T check<T>(value) {
    if (value is T) {
      return value;
    }
    throw CheckTokenError(checked: value, token: this, type: T);
  }

  num n(v) => check<num>(v);
  String s(v) => check<String>(v);
}

class CheckTokenError extends RuntimeError {
  final Token token;
  final dynamic checked;
  final Type type;
  CheckTokenError(
      {required this.token, required this.checked, required this.type})
      : super(
            'Op ${token.tokenType.string} expected type $type, got ${checked?.runtimeType} line ${token.line}');
}

class RuntimeError extends Error {
  final String message;

  RuntimeError(this.message);

  @override
  String toString() => message;
}
