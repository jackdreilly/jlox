// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'statement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Statement {
  Expression get expression => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expression expression) expression,
    required TResult Function(Expression expression) print,
    required TResult Function(Token variable, Expression expression) assignment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token variable, Expression expression)? assignment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token variable, Expression expression)? assignment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(PrintStatement value) print,
    required TResult Function(AssignmentStatement value) assignment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(AssignmentStatement value)? assignment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(AssignmentStatement value)? assignment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatementCopyWith<Statement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatementCopyWith<$Res> {
  factory $StatementCopyWith(Statement value, $Res Function(Statement) then) =
      _$StatementCopyWithImpl<$Res>;
  $Res call({Expression expression});

  $ExpressionCopyWith<$Res> get expression;
}

/// @nodoc
class _$StatementCopyWithImpl<$Res> implements $StatementCopyWith<$Res> {
  _$StatementCopyWithImpl(this._value, this._then);

  final Statement _value;
  // ignore: unused_field
  final $Res Function(Statement) _then;

  @override
  $Res call({
    Object? expression = freezed,
  }) {
    return _then(_value.copyWith(
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as Expression,
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
abstract class _$$ExpressionStatementCopyWith<$Res>
    implements $StatementCopyWith<$Res> {
  factory _$$ExpressionStatementCopyWith(_$ExpressionStatement value,
          $Res Function(_$ExpressionStatement) then) =
      __$$ExpressionStatementCopyWithImpl<$Res>;
  @override
  $Res call({Expression expression});

  @override
  $ExpressionCopyWith<$Res> get expression;
}

/// @nodoc
class __$$ExpressionStatementCopyWithImpl<$Res>
    extends _$StatementCopyWithImpl<$Res>
    implements _$$ExpressionStatementCopyWith<$Res> {
  __$$ExpressionStatementCopyWithImpl(
      _$ExpressionStatement _value, $Res Function(_$ExpressionStatement) _then)
      : super(_value, (v) => _then(v as _$ExpressionStatement));

  @override
  _$ExpressionStatement get _value => super._value as _$ExpressionStatement;

  @override
  $Res call({
    Object? expression = freezed,
  }) {
    return _then(_$ExpressionStatement(
      expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as Expression,
    ));
  }
}

/// @nodoc

class _$ExpressionStatement implements ExpressionStatement {
  const _$ExpressionStatement(this.expression);

  @override
  final Expression expression;

  @override
  String toString() {
    return 'Statement.expression(expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpressionStatement &&
            const DeepCollectionEquality()
                .equals(other.expression, expression));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(expression));

  @JsonKey(ignore: true)
  @override
  _$$ExpressionStatementCopyWith<_$ExpressionStatement> get copyWith =>
      __$$ExpressionStatementCopyWithImpl<_$ExpressionStatement>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expression expression) expression,
    required TResult Function(Expression expression) print,
    required TResult Function(Token variable, Expression expression) assignment,
  }) {
    return expression(this.expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token variable, Expression expression)? assignment,
  }) {
    return expression?.call(this.expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token variable, Expression expression)? assignment,
    required TResult orElse(),
  }) {
    if (expression != null) {
      return expression(this.expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(PrintStatement value) print,
    required TResult Function(AssignmentStatement value) assignment,
  }) {
    return expression(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(AssignmentStatement value)? assignment,
  }) {
    return expression?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(AssignmentStatement value)? assignment,
    required TResult orElse(),
  }) {
    if (expression != null) {
      return expression(this);
    }
    return orElse();
  }
}

abstract class ExpressionStatement implements Statement {
  const factory ExpressionStatement(final Expression expression) =
      _$ExpressionStatement;

  @override
  Expression get expression;
  @override
  @JsonKey(ignore: true)
  _$$ExpressionStatementCopyWith<_$ExpressionStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PrintStatementCopyWith<$Res>
    implements $StatementCopyWith<$Res> {
  factory _$$PrintStatementCopyWith(
          _$PrintStatement value, $Res Function(_$PrintStatement) then) =
      __$$PrintStatementCopyWithImpl<$Res>;
  @override
  $Res call({Expression expression});

  @override
  $ExpressionCopyWith<$Res> get expression;
}

/// @nodoc
class __$$PrintStatementCopyWithImpl<$Res> extends _$StatementCopyWithImpl<$Res>
    implements _$$PrintStatementCopyWith<$Res> {
  __$$PrintStatementCopyWithImpl(
      _$PrintStatement _value, $Res Function(_$PrintStatement) _then)
      : super(_value, (v) => _then(v as _$PrintStatement));

  @override
  _$PrintStatement get _value => super._value as _$PrintStatement;

  @override
  $Res call({
    Object? expression = freezed,
  }) {
    return _then(_$PrintStatement(
      expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as Expression,
    ));
  }
}

/// @nodoc

class _$PrintStatement implements PrintStatement {
  const _$PrintStatement(this.expression);

  @override
  final Expression expression;

  @override
  String toString() {
    return 'Statement.print(expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrintStatement &&
            const DeepCollectionEquality()
                .equals(other.expression, expression));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(expression));

  @JsonKey(ignore: true)
  @override
  _$$PrintStatementCopyWith<_$PrintStatement> get copyWith =>
      __$$PrintStatementCopyWithImpl<_$PrintStatement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expression expression) expression,
    required TResult Function(Expression expression) print,
    required TResult Function(Token variable, Expression expression) assignment,
  }) {
    return print(this.expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token variable, Expression expression)? assignment,
  }) {
    return print?.call(this.expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token variable, Expression expression)? assignment,
    required TResult orElse(),
  }) {
    if (print != null) {
      return print(this.expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(PrintStatement value) print,
    required TResult Function(AssignmentStatement value) assignment,
  }) {
    return print(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(AssignmentStatement value)? assignment,
  }) {
    return print?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(AssignmentStatement value)? assignment,
    required TResult orElse(),
  }) {
    if (print != null) {
      return print(this);
    }
    return orElse();
  }
}

abstract class PrintStatement implements Statement {
  const factory PrintStatement(final Expression expression) = _$PrintStatement;

  @override
  Expression get expression;
  @override
  @JsonKey(ignore: true)
  _$$PrintStatementCopyWith<_$PrintStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignmentStatementCopyWith<$Res>
    implements $StatementCopyWith<$Res> {
  factory _$$AssignmentStatementCopyWith(_$AssignmentStatement value,
          $Res Function(_$AssignmentStatement) then) =
      __$$AssignmentStatementCopyWithImpl<$Res>;
  @override
  $Res call({Token variable, Expression expression});

  $TokenCopyWith<$Res> get variable;
  @override
  $ExpressionCopyWith<$Res> get expression;
}

/// @nodoc
class __$$AssignmentStatementCopyWithImpl<$Res>
    extends _$StatementCopyWithImpl<$Res>
    implements _$$AssignmentStatementCopyWith<$Res> {
  __$$AssignmentStatementCopyWithImpl(
      _$AssignmentStatement _value, $Res Function(_$AssignmentStatement) _then)
      : super(_value, (v) => _then(v as _$AssignmentStatement));

  @override
  _$AssignmentStatement get _value => super._value as _$AssignmentStatement;

  @override
  $Res call({
    Object? variable = freezed,
    Object? expression = freezed,
  }) {
    return _then(_$AssignmentStatement(
      variable: variable == freezed
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as Token,
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as Expression,
    ));
  }

  @override
  $TokenCopyWith<$Res> get variable {
    return $TokenCopyWith<$Res>(_value.variable, (value) {
      return _then(_value.copyWith(variable: value));
    });
  }
}

/// @nodoc

class _$AssignmentStatement implements AssignmentStatement {
  const _$AssignmentStatement(
      {required this.variable, required this.expression});

  @override
  final Token variable;
  @override
  final Expression expression;

  @override
  String toString() {
    return 'Statement.assignment(variable: $variable, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentStatement &&
            const DeepCollectionEquality().equals(other.variable, variable) &&
            const DeepCollectionEquality()
                .equals(other.expression, expression));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(variable),
      const DeepCollectionEquality().hash(expression));

  @JsonKey(ignore: true)
  @override
  _$$AssignmentStatementCopyWith<_$AssignmentStatement> get copyWith =>
      __$$AssignmentStatementCopyWithImpl<_$AssignmentStatement>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expression expression) expression,
    required TResult Function(Expression expression) print,
    required TResult Function(Token variable, Expression expression) assignment,
  }) {
    return assignment(variable, this.expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token variable, Expression expression)? assignment,
  }) {
    return assignment?.call(variable, this.expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token variable, Expression expression)? assignment,
    required TResult orElse(),
  }) {
    if (assignment != null) {
      return assignment(variable, this.expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(PrintStatement value) print,
    required TResult Function(AssignmentStatement value) assignment,
  }) {
    return assignment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(AssignmentStatement value)? assignment,
  }) {
    return assignment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(AssignmentStatement value)? assignment,
    required TResult orElse(),
  }) {
    if (assignment != null) {
      return assignment(this);
    }
    return orElse();
  }
}

abstract class AssignmentStatement implements Statement {
  const factory AssignmentStatement(
      {required final Token variable,
      required final Expression expression}) = _$AssignmentStatement;

  Token get variable;
  @override
  Expression get expression;
  @override
  @JsonKey(ignore: true)
  _$$AssignmentStatementCopyWith<_$AssignmentStatement> get copyWith =>
      throw _privateConstructorUsedError;
}
