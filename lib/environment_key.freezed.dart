// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'environment_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EnvironmentKey {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int line, int position) identifier,
    required TResult Function(TokenType tokenType) tokenType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, int line, int position)? identifier,
    TResult Function(TokenType tokenType)? tokenType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int line, int position)? identifier,
    TResult Function(TokenType tokenType)? tokenType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdentifierKey value) identifier,
    required TResult Function(TokenTypeKey value) tokenType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IdentifierKey value)? identifier,
    TResult Function(TokenTypeKey value)? tokenType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdentifierKey value)? identifier,
    TResult Function(TokenTypeKey value)? tokenType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentKeyCopyWith<$Res> {
  factory $EnvironmentKeyCopyWith(
          EnvironmentKey value, $Res Function(EnvironmentKey) then) =
      _$EnvironmentKeyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EnvironmentKeyCopyWithImpl<$Res>
    implements $EnvironmentKeyCopyWith<$Res> {
  _$EnvironmentKeyCopyWithImpl(this._value, this._then);

  final EnvironmentKey _value;
  // ignore: unused_field
  final $Res Function(EnvironmentKey) _then;
}

/// @nodoc
abstract class _$$IdentifierKeyCopyWith<$Res> {
  factory _$$IdentifierKeyCopyWith(
          _$IdentifierKey value, $Res Function(_$IdentifierKey) then) =
      __$$IdentifierKeyCopyWithImpl<$Res>;
  $Res call({String name, int line, int position});
}

/// @nodoc
class __$$IdentifierKeyCopyWithImpl<$Res>
    extends _$EnvironmentKeyCopyWithImpl<$Res>
    implements _$$IdentifierKeyCopyWith<$Res> {
  __$$IdentifierKeyCopyWithImpl(
      _$IdentifierKey _value, $Res Function(_$IdentifierKey) _then)
      : super(_value, (v) => _then(v as _$IdentifierKey));

  @override
  _$IdentifierKey get _value => super._value as _$IdentifierKey;

  @override
  $Res call({
    Object? name = freezed,
    Object? line = freezed,
    Object? position = freezed,
  }) {
    return _then(_$IdentifierKey(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$IdentifierKey extends IdentifierKey {
  const _$IdentifierKey(
      {required this.name, required this.line, required this.position})
      : super._();

  @override
  final String name;
  @override
  final int line;
  @override
  final int position;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentifierKey &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.line, line) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(line),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$$IdentifierKeyCopyWith<_$IdentifierKey> get copyWith =>
      __$$IdentifierKeyCopyWithImpl<_$IdentifierKey>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int line, int position) identifier,
    required TResult Function(TokenType tokenType) tokenType,
  }) {
    return identifier(name, line, position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, int line, int position)? identifier,
    TResult Function(TokenType tokenType)? tokenType,
  }) {
    return identifier?.call(name, line, position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int line, int position)? identifier,
    TResult Function(TokenType tokenType)? tokenType,
    required TResult orElse(),
  }) {
    if (identifier != null) {
      return identifier(name, line, position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdentifierKey value) identifier,
    required TResult Function(TokenTypeKey value) tokenType,
  }) {
    return identifier(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IdentifierKey value)? identifier,
    TResult Function(TokenTypeKey value)? tokenType,
  }) {
    return identifier?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdentifierKey value)? identifier,
    TResult Function(TokenTypeKey value)? tokenType,
    required TResult orElse(),
  }) {
    if (identifier != null) {
      return identifier(this);
    }
    return orElse();
  }
}

abstract class IdentifierKey extends EnvironmentKey {
  const factory IdentifierKey(
      {required final String name,
      required final int line,
      required final int position}) = _$IdentifierKey;
  const IdentifierKey._() : super._();

  String get name;
  int get line;
  int get position;
  @JsonKey(ignore: true)
  _$$IdentifierKeyCopyWith<_$IdentifierKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenTypeKeyCopyWith<$Res> {
  factory _$$TokenTypeKeyCopyWith(
          _$TokenTypeKey value, $Res Function(_$TokenTypeKey) then) =
      __$$TokenTypeKeyCopyWithImpl<$Res>;
  $Res call({TokenType tokenType});
}

/// @nodoc
class __$$TokenTypeKeyCopyWithImpl<$Res>
    extends _$EnvironmentKeyCopyWithImpl<$Res>
    implements _$$TokenTypeKeyCopyWith<$Res> {
  __$$TokenTypeKeyCopyWithImpl(
      _$TokenTypeKey _value, $Res Function(_$TokenTypeKey) _then)
      : super(_value, (v) => _then(v as _$TokenTypeKey));

  @override
  _$TokenTypeKey get _value => super._value as _$TokenTypeKey;

  @override
  $Res call({
    Object? tokenType = freezed,
  }) {
    return _then(_$TokenTypeKey(
      tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as TokenType,
    ));
  }
}

/// @nodoc

class _$TokenTypeKey extends TokenTypeKey {
  const _$TokenTypeKey(this.tokenType) : super._();

  @override
  final TokenType tokenType;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenTypeKey &&
            const DeepCollectionEquality().equals(other.tokenType, tokenType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tokenType));

  @JsonKey(ignore: true)
  @override
  _$$TokenTypeKeyCopyWith<_$TokenTypeKey> get copyWith =>
      __$$TokenTypeKeyCopyWithImpl<_$TokenTypeKey>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int line, int position) identifier,
    required TResult Function(TokenType tokenType) tokenType,
  }) {
    return tokenType(this.tokenType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, int line, int position)? identifier,
    TResult Function(TokenType tokenType)? tokenType,
  }) {
    return tokenType?.call(this.tokenType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int line, int position)? identifier,
    TResult Function(TokenType tokenType)? tokenType,
    required TResult orElse(),
  }) {
    if (tokenType != null) {
      return tokenType(this.tokenType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdentifierKey value) identifier,
    required TResult Function(TokenTypeKey value) tokenType,
  }) {
    return tokenType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IdentifierKey value)? identifier,
    TResult Function(TokenTypeKey value)? tokenType,
  }) {
    return tokenType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdentifierKey value)? identifier,
    TResult Function(TokenTypeKey value)? tokenType,
    required TResult orElse(),
  }) {
    if (tokenType != null) {
      return tokenType(this);
    }
    return orElse();
  }
}

abstract class TokenTypeKey extends EnvironmentKey {
  const factory TokenTypeKey(final TokenType tokenType) = _$TokenTypeKey;
  const TokenTypeKey._() : super._();

  TokenType get tokenType;
  @JsonKey(ignore: true)
  _$$TokenTypeKeyCopyWith<_$TokenTypeKey> get copyWith =>
      throw _privateConstructorUsedError;
}
