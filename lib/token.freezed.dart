// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Token {
  TokenType get tokenType => throw _privateConstructorUsedError;
  String get lexeme => throw _privateConstructorUsedError;
  dynamic get literal => throw _privateConstructorUsedError;
  int get line => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res>;
  $Res call(
      {TokenType tokenType,
      String lexeme,
      dynamic literal,
      int line,
      int position});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res> implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  final Token _value;
  // ignore: unused_field
  final $Res Function(Token) _then;

  @override
  $Res call({
    Object? tokenType = freezed,
    Object? lexeme = freezed,
    Object? literal = freezed,
    Object? line = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as TokenType,
      lexeme: lexeme == freezed
          ? _value.lexeme
          : lexeme // ignore: cast_nullable_to_non_nullable
              as String,
      literal: literal == freezed
          ? _value.literal
          : literal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      line: line == freezed
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as int,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$$_TokenCopyWith(_$_Token value, $Res Function(_$_Token) then) =
      __$$_TokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {TokenType tokenType,
      String lexeme,
      dynamic literal,
      int line,
      int position});
}

/// @nodoc
class __$$_TokenCopyWithImpl<$Res> extends _$TokenCopyWithImpl<$Res>
    implements _$$_TokenCopyWith<$Res> {
  __$$_TokenCopyWithImpl(_$_Token _value, $Res Function(_$_Token) _then)
      : super(_value, (v) => _then(v as _$_Token));

  @override
  _$_Token get _value => super._value as _$_Token;

  @override
  $Res call({
    Object? tokenType = freezed,
    Object? lexeme = freezed,
    Object? literal = freezed,
    Object? line = freezed,
    Object? position = freezed,
  }) {
    return _then(_$_Token(
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as TokenType,
      lexeme: lexeme == freezed
          ? _value.lexeme
          : lexeme // ignore: cast_nullable_to_non_nullable
              as String,
      literal: literal == freezed
          ? _value.literal
          : literal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      line: line == freezed
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as int,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Token implements _Token {
  const _$_Token(
      {required this.tokenType,
      required this.lexeme,
      required this.literal,
      required this.line,
      required this.position});

  @override
  final TokenType tokenType;
  @override
  final String lexeme;
  @override
  final dynamic literal;
  @override
  final int line;
  @override
  final int position;

  @override
  String toString() {
    return 'Token(tokenType: $tokenType, lexeme: $lexeme, literal: $literal, line: $line, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Token &&
            const DeepCollectionEquality().equals(other.tokenType, tokenType) &&
            const DeepCollectionEquality().equals(other.lexeme, lexeme) &&
            const DeepCollectionEquality().equals(other.literal, literal) &&
            const DeepCollectionEquality().equals(other.line, line) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tokenType),
      const DeepCollectionEquality().hash(lexeme),
      const DeepCollectionEquality().hash(literal),
      const DeepCollectionEquality().hash(line),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$$_TokenCopyWith<_$_Token> get copyWith =>
      __$$_TokenCopyWithImpl<_$_Token>(this, _$identity);
}

abstract class _Token implements Token {
  const factory _Token(
      {required final TokenType tokenType,
      required final String lexeme,
      required final dynamic literal,
      required final int line,
      required final int position}) = _$_Token;

  @override
  TokenType get tokenType;
  @override
  String get lexeme;
  @override
  dynamic get literal;
  @override
  int get line;
  @override
  int get position;
  @override
  @JsonKey(ignore: true)
  _$$_TokenCopyWith<_$_Token> get copyWith =>
      throw _privateConstructorUsedError;
}
