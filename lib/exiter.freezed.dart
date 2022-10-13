// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exiter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Exiter {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? value) returned,
    required TResult Function() broke,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object? value)? returned,
    TResult Function()? broke,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? value)? returned,
    TResult Function()? broke,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Returned value) returned,
    required TResult Function(Broke value) broke,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Returned value)? returned,
    TResult Function(Broke value)? broke,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Returned value)? returned,
    TResult Function(Broke value)? broke,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExiterCopyWith<$Res> {
  factory $ExiterCopyWith(Exiter value, $Res Function(Exiter) then) =
      _$ExiterCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExiterCopyWithImpl<$Res> implements $ExiterCopyWith<$Res> {
  _$ExiterCopyWithImpl(this._value, this._then);

  final Exiter _value;
  // ignore: unused_field
  final $Res Function(Exiter) _then;
}

/// @nodoc
abstract class _$$ReturnedCopyWith<$Res> {
  factory _$$ReturnedCopyWith(
          _$Returned value, $Res Function(_$Returned) then) =
      __$$ReturnedCopyWithImpl<$Res>;
  $Res call({Object? value});
}

/// @nodoc
class __$$ReturnedCopyWithImpl<$Res> extends _$ExiterCopyWithImpl<$Res>
    implements _$$ReturnedCopyWith<$Res> {
  __$$ReturnedCopyWithImpl(_$Returned _value, $Res Function(_$Returned) _then)
      : super(_value, (v) => _then(v as _$Returned));

  @override
  _$Returned get _value => super._value as _$Returned;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$Returned(
      value == freezed ? _value.value : value,
    ));
  }
}

/// @nodoc

class _$Returned implements Returned {
  const _$Returned(this.value);

  @override
  final Object? value;

  @override
  String toString() {
    return 'Exiter.returned(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Returned &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$ReturnedCopyWith<_$Returned> get copyWith =>
      __$$ReturnedCopyWithImpl<_$Returned>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? value) returned,
    required TResult Function() broke,
  }) {
    return returned(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object? value)? returned,
    TResult Function()? broke,
  }) {
    return returned?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? value)? returned,
    TResult Function()? broke,
    required TResult orElse(),
  }) {
    if (returned != null) {
      return returned(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Returned value) returned,
    required TResult Function(Broke value) broke,
  }) {
    return returned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Returned value)? returned,
    TResult Function(Broke value)? broke,
  }) {
    return returned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Returned value)? returned,
    TResult Function(Broke value)? broke,
    required TResult orElse(),
  }) {
    if (returned != null) {
      return returned(this);
    }
    return orElse();
  }
}

abstract class Returned implements Exiter {
  const factory Returned(final Object? value) = _$Returned;

  Object? get value;
  @JsonKey(ignore: true)
  _$$ReturnedCopyWith<_$Returned> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BrokeCopyWith<$Res> {
  factory _$$BrokeCopyWith(_$Broke value, $Res Function(_$Broke) then) =
      __$$BrokeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BrokeCopyWithImpl<$Res> extends _$ExiterCopyWithImpl<$Res>
    implements _$$BrokeCopyWith<$Res> {
  __$$BrokeCopyWithImpl(_$Broke _value, $Res Function(_$Broke) _then)
      : super(_value, (v) => _then(v as _$Broke));

  @override
  _$Broke get _value => super._value as _$Broke;
}

/// @nodoc

class _$Broke implements Broke {
  const _$Broke();

  @override
  String toString() {
    return 'Exiter.broke()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Broke);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? value) returned,
    required TResult Function() broke,
  }) {
    return broke();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object? value)? returned,
    TResult Function()? broke,
  }) {
    return broke?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? value)? returned,
    TResult Function()? broke,
    required TResult orElse(),
  }) {
    if (broke != null) {
      return broke();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Returned value) returned,
    required TResult Function(Broke value) broke,
  }) {
    return broke(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Returned value)? returned,
    TResult Function(Broke value)? broke,
  }) {
    return broke?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Returned value)? returned,
    TResult Function(Broke value)? broke,
    required TResult orElse(),
  }) {
    if (broke != null) {
      return broke(this);
    }
    return orElse();
  }
}

abstract class Broke implements Exiter {
  const factory Broke() = _$Broke;
}
