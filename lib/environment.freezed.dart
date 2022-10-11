// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'environment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VariableValue {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) present,
    required TResult Function() absent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic value)? present,
    TResult Function()? absent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? present,
    TResult Function()? absent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Present value) present,
    required TResult Function(Absent value) absent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Present value)? present,
    TResult Function(Absent value)? absent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Present value)? present,
    TResult Function(Absent value)? absent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariableValueCopyWith<$Res> {
  factory $VariableValueCopyWith(
          VariableValue value, $Res Function(VariableValue) then) =
      _$VariableValueCopyWithImpl<$Res>;
}

/// @nodoc
class _$VariableValueCopyWithImpl<$Res>
    implements $VariableValueCopyWith<$Res> {
  _$VariableValueCopyWithImpl(this._value, this._then);

  final VariableValue _value;
  // ignore: unused_field
  final $Res Function(VariableValue) _then;
}

/// @nodoc
abstract class _$$PresentCopyWith<$Res> {
  factory _$$PresentCopyWith(_$Present value, $Res Function(_$Present) then) =
      __$$PresentCopyWithImpl<$Res>;
  $Res call({dynamic value});
}

/// @nodoc
class __$$PresentCopyWithImpl<$Res> extends _$VariableValueCopyWithImpl<$Res>
    implements _$$PresentCopyWith<$Res> {
  __$$PresentCopyWithImpl(_$Present _value, $Res Function(_$Present) _then)
      : super(_value, (v) => _then(v as _$Present));

  @override
  _$Present get _value => super._value as _$Present;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$Present(
      value == freezed ? _value.value : value,
    ));
  }
}

/// @nodoc

class _$Present implements Present {
  const _$Present(this.value);

  @override
  final dynamic value;

  @override
  String toString() {
    return 'VariableValue.present(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Present &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$PresentCopyWith<_$Present> get copyWith =>
      __$$PresentCopyWithImpl<_$Present>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) present,
    required TResult Function() absent,
  }) {
    return present(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic value)? present,
    TResult Function()? absent,
  }) {
    return present?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? present,
    TResult Function()? absent,
    required TResult orElse(),
  }) {
    if (present != null) {
      return present(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Present value) present,
    required TResult Function(Absent value) absent,
  }) {
    return present(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Present value)? present,
    TResult Function(Absent value)? absent,
  }) {
    return present?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Present value)? present,
    TResult Function(Absent value)? absent,
    required TResult orElse(),
  }) {
    if (present != null) {
      return present(this);
    }
    return orElse();
  }
}

abstract class Present implements VariableValue {
  const factory Present(final dynamic value) = _$Present;

  dynamic get value;
  @JsonKey(ignore: true)
  _$$PresentCopyWith<_$Present> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AbsentCopyWith<$Res> {
  factory _$$AbsentCopyWith(_$Absent value, $Res Function(_$Absent) then) =
      __$$AbsentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AbsentCopyWithImpl<$Res> extends _$VariableValueCopyWithImpl<$Res>
    implements _$$AbsentCopyWith<$Res> {
  __$$AbsentCopyWithImpl(_$Absent _value, $Res Function(_$Absent) _then)
      : super(_value, (v) => _then(v as _$Absent));

  @override
  _$Absent get _value => super._value as _$Absent;
}

/// @nodoc

class _$Absent implements Absent {
  const _$Absent();

  @override
  String toString() {
    return 'VariableValue.absent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Absent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) present,
    required TResult Function() absent,
  }) {
    return absent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic value)? present,
    TResult Function()? absent,
  }) {
    return absent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? present,
    TResult Function()? absent,
    required TResult orElse(),
  }) {
    if (absent != null) {
      return absent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Present value) present,
    required TResult Function(Absent value) absent,
  }) {
    return absent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Present value)? present,
    TResult Function(Absent value)? absent,
  }) {
    return absent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Present value)? present,
    TResult Function(Absent value)? absent,
    required TResult orElse(),
  }) {
    if (absent != null) {
      return absent(this);
    }
    return orElse();
  }
}

abstract class Absent implements VariableValue {
  const factory Absent() = _$Absent;
}
