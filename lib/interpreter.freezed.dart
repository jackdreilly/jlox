// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'interpreter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpressionState {
  Expression get expression => throw _privateConstructorUsedError;
  Map<String, dynamic> get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpressionStateCopyWith<ExpressionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpressionStateCopyWith<$Res> {
  factory $ExpressionStateCopyWith(
          ExpressionState value, $Res Function(ExpressionState) then) =
      _$ExpressionStateCopyWithImpl<$Res>;
  $Res call({Expression expression, Map<String, dynamic> state});

  $ExpressionCopyWith<$Res> get expression;
}

/// @nodoc
class _$ExpressionStateCopyWithImpl<$Res>
    implements $ExpressionStateCopyWith<$Res> {
  _$ExpressionStateCopyWithImpl(this._value, this._then);

  final ExpressionState _value;
  // ignore: unused_field
  final $Res Function(ExpressionState) _then;

  @override
  $Res call({
    Object? expression = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as Expression,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }

  @override
  $ExpressionCopyWith<$Res> get expression {
    return $ExpressionCopyWith<$Res>(_value.expression, (value) {
      return _then(_value.copyWith(expression: value));
    });
  }
}

/// @nodoc
abstract class _$$ExpressionStateFactoryCopyWith<$Res>
    implements $ExpressionStateCopyWith<$Res> {
  factory _$$ExpressionStateFactoryCopyWith(_$ExpressionStateFactory value,
          $Res Function(_$ExpressionStateFactory) then) =
      __$$ExpressionStateFactoryCopyWithImpl<$Res>;
  @override
  $Res call({Expression expression, Map<String, dynamic> state});

  @override
  $ExpressionCopyWith<$Res> get expression;
}

/// @nodoc
class __$$ExpressionStateFactoryCopyWithImpl<$Res>
    extends _$ExpressionStateCopyWithImpl<$Res>
    implements _$$ExpressionStateFactoryCopyWith<$Res> {
  __$$ExpressionStateFactoryCopyWithImpl(_$ExpressionStateFactory _value,
      $Res Function(_$ExpressionStateFactory) _then)
      : super(_value, (v) => _then(v as _$ExpressionStateFactory));

  @override
  _$ExpressionStateFactory get _value =>
      super._value as _$ExpressionStateFactory;

  @override
  $Res call({
    Object? expression = freezed,
    Object? state = freezed,
  }) {
    return _then(_$ExpressionStateFactory(
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as Expression,
      state: state == freezed
          ? _value._state
          : state // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$ExpressionStateFactory implements ExpressionStateFactory {
  const _$ExpressionStateFactory(
      {required this.expression, required final Map<String, dynamic> state})
      : _state = state;

  @override
  final Expression expression;
  final Map<String, dynamic> _state;
  @override
  Map<String, dynamic> get state {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_state);
  }

  @override
  String toString() {
    return 'ExpressionState(expression: $expression, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpressionStateFactory &&
            const DeepCollectionEquality()
                .equals(other.expression, expression) &&
            const DeepCollectionEquality().equals(other._state, _state));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(expression),
      const DeepCollectionEquality().hash(_state));

  @JsonKey(ignore: true)
  @override
  _$$ExpressionStateFactoryCopyWith<_$ExpressionStateFactory> get copyWith =>
      __$$ExpressionStateFactoryCopyWithImpl<_$ExpressionStateFactory>(
          this, _$identity);
}

abstract class ExpressionStateFactory implements ExpressionState {
  const factory ExpressionStateFactory(
      {required final Expression expression,
      required final Map<String, dynamic> state}) = _$ExpressionStateFactory;

  @override
  Expression get expression;
  @override
  Map<String, dynamic> get state;
  @override
  @JsonKey(ignore: true)
  _$$ExpressionStateFactoryCopyWith<_$ExpressionStateFactory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatementState {
  Statement get statement => throw _privateConstructorUsedError;
  Map<String, dynamic> get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatementStateCopyWith<StatementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatementStateCopyWith<$Res> {
  factory $StatementStateCopyWith(
          StatementState value, $Res Function(StatementState) then) =
      _$StatementStateCopyWithImpl<$Res>;
  $Res call({Statement statement, Map<String, dynamic> state});

  $StatementCopyWith<$Res> get statement;
}

/// @nodoc
class _$StatementStateCopyWithImpl<$Res>
    implements $StatementStateCopyWith<$Res> {
  _$StatementStateCopyWithImpl(this._value, this._then);

  final StatementState _value;
  // ignore: unused_field
  final $Res Function(StatementState) _then;

  @override
  $Res call({
    Object? statement = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      statement: statement == freezed
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as Statement,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }

  @override
  $StatementCopyWith<$Res> get statement {
    return $StatementCopyWith<$Res>(_value.statement, (value) {
      return _then(_value.copyWith(statement: value));
    });
  }
}

/// @nodoc
abstract class _$$StatementStateFactoryCopyWith<$Res>
    implements $StatementStateCopyWith<$Res> {
  factory _$$StatementStateFactoryCopyWith(_$StatementStateFactory value,
          $Res Function(_$StatementStateFactory) then) =
      __$$StatementStateFactoryCopyWithImpl<$Res>;
  @override
  $Res call({Statement statement, Map<String, dynamic> state});

  @override
  $StatementCopyWith<$Res> get statement;
}

/// @nodoc
class __$$StatementStateFactoryCopyWithImpl<$Res>
    extends _$StatementStateCopyWithImpl<$Res>
    implements _$$StatementStateFactoryCopyWith<$Res> {
  __$$StatementStateFactoryCopyWithImpl(_$StatementStateFactory _value,
      $Res Function(_$StatementStateFactory) _then)
      : super(_value, (v) => _then(v as _$StatementStateFactory));

  @override
  _$StatementStateFactory get _value => super._value as _$StatementStateFactory;

  @override
  $Res call({
    Object? statement = freezed,
    Object? state = freezed,
  }) {
    return _then(_$StatementStateFactory(
      statement: statement == freezed
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as Statement,
      state: state == freezed
          ? _value._state
          : state // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$StatementStateFactory implements StatementStateFactory {
  const _$StatementStateFactory(
      {required this.statement, required final Map<String, dynamic> state})
      : _state = state;

  @override
  final Statement statement;
  final Map<String, dynamic> _state;
  @override
  Map<String, dynamic> get state {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_state);
  }

  @override
  String toString() {
    return 'StatementState(statement: $statement, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatementStateFactory &&
            const DeepCollectionEquality().equals(other.statement, statement) &&
            const DeepCollectionEquality().equals(other._state, _state));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statement),
      const DeepCollectionEquality().hash(_state));

  @JsonKey(ignore: true)
  @override
  _$$StatementStateFactoryCopyWith<_$StatementStateFactory> get copyWith =>
      __$$StatementStateFactoryCopyWithImpl<_$StatementStateFactory>(
          this, _$identity);
}

abstract class StatementStateFactory implements StatementState {
  const factory StatementStateFactory(
      {required final Statement statement,
      required final Map<String, dynamic> state}) = _$StatementStateFactory;

  @override
  Statement get statement;
  @override
  Map<String, dynamic> get state;
  @override
  @JsonKey(ignore: true)
  _$$StatementStateFactoryCopyWith<_$StatementStateFactory> get copyWith =>
      throw _privateConstructorUsedError;
}
