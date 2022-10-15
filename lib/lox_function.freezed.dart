// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lox_function.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoxFunction {
  Interpreter get interpreter => throw _privateConstructorUsedError;
  FunctionExpression get function => throw _privateConstructorUsedError;
  Environment get environment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoxFunctionCopyWith<LoxFunction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoxFunctionCopyWith<$Res> {
  factory $LoxFunctionCopyWith(
          LoxFunction value, $Res Function(LoxFunction) then) =
      _$LoxFunctionCopyWithImpl<$Res>;
  $Res call(
      {Interpreter interpreter,
      FunctionExpression function,
      Environment environment});
}

/// @nodoc
class _$LoxFunctionCopyWithImpl<$Res> implements $LoxFunctionCopyWith<$Res> {
  _$LoxFunctionCopyWithImpl(this._value, this._then);

  final LoxFunction _value;
  // ignore: unused_field
  final $Res Function(LoxFunction) _then;

  @override
  $Res call({
    Object? interpreter = freezed,
    Object? function = freezed,
    Object? environment = freezed,
  }) {
    return _then(_value.copyWith(
      interpreter: interpreter == freezed
          ? _value.interpreter
          : interpreter // ignore: cast_nullable_to_non_nullable
              as Interpreter,
      function: function == freezed
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as FunctionExpression,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment,
    ));
  }
}

/// @nodoc
abstract class _$$LoxFunctionConstructorCopyWith<$Res>
    implements $LoxFunctionCopyWith<$Res> {
  factory _$$LoxFunctionConstructorCopyWith(_$LoxFunctionConstructor value,
          $Res Function(_$LoxFunctionConstructor) then) =
      __$$LoxFunctionConstructorCopyWithImpl<$Res>;
  @override
  $Res call(
      {Interpreter interpreter,
      FunctionExpression function,
      Environment environment});
}

/// @nodoc
class __$$LoxFunctionConstructorCopyWithImpl<$Res>
    extends _$LoxFunctionCopyWithImpl<$Res>
    implements _$$LoxFunctionConstructorCopyWith<$Res> {
  __$$LoxFunctionConstructorCopyWithImpl(_$LoxFunctionConstructor _value,
      $Res Function(_$LoxFunctionConstructor) _then)
      : super(_value, (v) => _then(v as _$LoxFunctionConstructor));

  @override
  _$LoxFunctionConstructor get _value =>
      super._value as _$LoxFunctionConstructor;

  @override
  $Res call({
    Object? interpreter = freezed,
    Object? function = freezed,
    Object? environment = freezed,
  }) {
    return _then(_$LoxFunctionConstructor(
      interpreter: interpreter == freezed
          ? _value.interpreter
          : interpreter // ignore: cast_nullable_to_non_nullable
              as Interpreter,
      function: function == freezed
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as FunctionExpression,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment,
    ));
  }
}

/// @nodoc

class _$LoxFunctionConstructor extends LoxFunctionConstructor {
  const _$LoxFunctionConstructor(
      {required this.interpreter,
      required this.function,
      required this.environment})
      : super._();

  @override
  final Interpreter interpreter;
  @override
  final FunctionExpression function;
  @override
  final Environment environment;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoxFunctionConstructor &&
            const DeepCollectionEquality()
                .equals(other.interpreter, interpreter) &&
            const DeepCollectionEquality().equals(other.function, function) &&
            const DeepCollectionEquality()
                .equals(other.environment, environment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(interpreter),
      const DeepCollectionEquality().hash(function),
      const DeepCollectionEquality().hash(environment));

  @JsonKey(ignore: true)
  @override
  _$$LoxFunctionConstructorCopyWith<_$LoxFunctionConstructor> get copyWith =>
      __$$LoxFunctionConstructorCopyWithImpl<_$LoxFunctionConstructor>(
          this, _$identity);
}

abstract class LoxFunctionConstructor extends LoxFunction {
  const factory LoxFunctionConstructor(
      {required final Interpreter interpreter,
      required final FunctionExpression function,
      required final Environment environment}) = _$LoxFunctionConstructor;
  const LoxFunctionConstructor._() : super._();

  @override
  Interpreter get interpreter;
  @override
  FunctionExpression get function;
  @override
  Environment get environment;
  @override
  @JsonKey(ignore: true)
  _$$LoxFunctionConstructorCopyWith<_$LoxFunctionConstructor> get copyWith =>
      throw _privateConstructorUsedError;
}
