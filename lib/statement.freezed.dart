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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expression expression) expression,
    required TResult Function(Expression expression) print,
    required TResult Function(List<Statement> statements) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(List<Statement> statements)? block,
    TResult Function(Token variable, Expression expression)? declaration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(List<Statement> statements)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(PrintStatement value) print,
    required TResult Function(BlockStatement value) block,
    required TResult Function(DeclarationStatement value) declaration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatementCopyWith<$Res> {
  factory $StatementCopyWith(Statement value, $Res Function(Statement) then) =
      _$StatementCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatementCopyWithImpl<$Res> implements $StatementCopyWith<$Res> {
  _$StatementCopyWithImpl(this._value, this._then);

  final Statement _value;
  // ignore: unused_field
  final $Res Function(Statement) _then;
}

/// @nodoc
abstract class _$$ExpressionStatementCopyWith<$Res> {
  factory _$$ExpressionStatementCopyWith(_$ExpressionStatement value,
          $Res Function(_$ExpressionStatement) then) =
      __$$ExpressionStatementCopyWithImpl<$Res>;
  $Res call({Expression expression});

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

  @override
  $ExpressionCopyWith<$Res> get expression {
    return $ExpressionCopyWith<$Res>(_value.expression, (value) {
      return _then(_value.copyWith(expression: value));
    });
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
    required TResult Function(List<Statement> statements) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
  }) {
    return expression(this.expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(List<Statement> statements)? block,
    TResult Function(Token variable, Expression expression)? declaration,
  }) {
    return expression?.call(this.expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(List<Statement> statements)? block,
    TResult Function(Token variable, Expression expression)? declaration,
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
    required TResult Function(BlockStatement value) block,
    required TResult Function(DeclarationStatement value) declaration,
  }) {
    return expression(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
  }) {
    return expression?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
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

  Expression get expression;
  @JsonKey(ignore: true)
  _$$ExpressionStatementCopyWith<_$ExpressionStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PrintStatementCopyWith<$Res> {
  factory _$$PrintStatementCopyWith(
          _$PrintStatement value, $Res Function(_$PrintStatement) then) =
      __$$PrintStatementCopyWithImpl<$Res>;
  $Res call({Expression expression});

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

  @override
  $ExpressionCopyWith<$Res> get expression {
    return $ExpressionCopyWith<$Res>(_value.expression, (value) {
      return _then(_value.copyWith(expression: value));
    });
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
    required TResult Function(List<Statement> statements) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
  }) {
    return print(this.expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(List<Statement> statements)? block,
    TResult Function(Token variable, Expression expression)? declaration,
  }) {
    return print?.call(this.expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(List<Statement> statements)? block,
    TResult Function(Token variable, Expression expression)? declaration,
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
    required TResult Function(BlockStatement value) block,
    required TResult Function(DeclarationStatement value) declaration,
  }) {
    return print(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
  }) {
    return print?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
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

  Expression get expression;
  @JsonKey(ignore: true)
  _$$PrintStatementCopyWith<_$PrintStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlockStatementCopyWith<$Res> {
  factory _$$BlockStatementCopyWith(
          _$BlockStatement value, $Res Function(_$BlockStatement) then) =
      __$$BlockStatementCopyWithImpl<$Res>;
  $Res call({List<Statement> statements});
}

/// @nodoc
class __$$BlockStatementCopyWithImpl<$Res> extends _$StatementCopyWithImpl<$Res>
    implements _$$BlockStatementCopyWith<$Res> {
  __$$BlockStatementCopyWithImpl(
      _$BlockStatement _value, $Res Function(_$BlockStatement) _then)
      : super(_value, (v) => _then(v as _$BlockStatement));

  @override
  _$BlockStatement get _value => super._value as _$BlockStatement;

  @override
  $Res call({
    Object? statements = freezed,
  }) {
    return _then(_$BlockStatement(
      statements == freezed
          ? _value._statements
          : statements // ignore: cast_nullable_to_non_nullable
              as List<Statement>,
    ));
  }
}

/// @nodoc

class _$BlockStatement implements BlockStatement {
  const _$BlockStatement(final List<Statement> statements)
      : _statements = statements;

  final List<Statement> _statements;
  @override
  List<Statement> get statements {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statements);
  }

  @override
  String toString() {
    return 'Statement.block(statements: $statements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockStatement &&
            const DeepCollectionEquality()
                .equals(other._statements, _statements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_statements));

  @JsonKey(ignore: true)
  @override
  _$$BlockStatementCopyWith<_$BlockStatement> get copyWith =>
      __$$BlockStatementCopyWithImpl<_$BlockStatement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expression expression) expression,
    required TResult Function(Expression expression) print,
    required TResult Function(List<Statement> statements) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
  }) {
    return block(statements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(List<Statement> statements)? block,
    TResult Function(Token variable, Expression expression)? declaration,
  }) {
    return block?.call(statements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(List<Statement> statements)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    required TResult orElse(),
  }) {
    if (block != null) {
      return block(statements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(PrintStatement value) print,
    required TResult Function(BlockStatement value) block,
    required TResult Function(DeclarationStatement value) declaration,
  }) {
    return block(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
  }) {
    return block?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
    required TResult orElse(),
  }) {
    if (block != null) {
      return block(this);
    }
    return orElse();
  }
}

abstract class BlockStatement implements Statement {
  const factory BlockStatement(final List<Statement> statements) =
      _$BlockStatement;

  List<Statement> get statements;
  @JsonKey(ignore: true)
  _$$BlockStatementCopyWith<_$BlockStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeclarationStatementCopyWith<$Res> {
  factory _$$DeclarationStatementCopyWith(_$DeclarationStatement value,
          $Res Function(_$DeclarationStatement) then) =
      __$$DeclarationStatementCopyWithImpl<$Res>;
  $Res call({Token variable, Expression expression});

  $TokenCopyWith<$Res> get variable;
  $ExpressionCopyWith<$Res> get expression;
}

/// @nodoc
class __$$DeclarationStatementCopyWithImpl<$Res>
    extends _$StatementCopyWithImpl<$Res>
    implements _$$DeclarationStatementCopyWith<$Res> {
  __$$DeclarationStatementCopyWithImpl(_$DeclarationStatement _value,
      $Res Function(_$DeclarationStatement) _then)
      : super(_value, (v) => _then(v as _$DeclarationStatement));

  @override
  _$DeclarationStatement get _value => super._value as _$DeclarationStatement;

  @override
  $Res call({
    Object? variable = freezed,
    Object? expression = freezed,
  }) {
    return _then(_$DeclarationStatement(
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

  @override
  $ExpressionCopyWith<$Res> get expression {
    return $ExpressionCopyWith<$Res>(_value.expression, (value) {
      return _then(_value.copyWith(expression: value));
    });
  }
}

/// @nodoc

class _$DeclarationStatement implements DeclarationStatement {
  const _$DeclarationStatement(
      {required this.variable, required this.expression});

  @override
  final Token variable;
  @override
  final Expression expression;

  @override
  String toString() {
    return 'Statement.declaration(variable: $variable, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeclarationStatement &&
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
  _$$DeclarationStatementCopyWith<_$DeclarationStatement> get copyWith =>
      __$$DeclarationStatementCopyWithImpl<_$DeclarationStatement>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expression expression) expression,
    required TResult Function(Expression expression) print,
    required TResult Function(List<Statement> statements) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
  }) {
    return declaration(variable, this.expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(List<Statement> statements)? block,
    TResult Function(Token variable, Expression expression)? declaration,
  }) {
    return declaration?.call(variable, this.expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(List<Statement> statements)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    required TResult orElse(),
  }) {
    if (declaration != null) {
      return declaration(variable, this.expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(PrintStatement value) print,
    required TResult Function(BlockStatement value) block,
    required TResult Function(DeclarationStatement value) declaration,
  }) {
    return declaration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
  }) {
    return declaration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
    required TResult orElse(),
  }) {
    if (declaration != null) {
      return declaration(this);
    }
    return orElse();
  }
}

abstract class DeclarationStatement implements Statement {
  const factory DeclarationStatement(
      {required final Token variable,
      required final Expression expression}) = _$DeclarationStatement;

  Token get variable;
  Expression get expression;
  @JsonKey(ignore: true)
  _$$DeclarationStatementCopyWith<_$DeclarationStatement> get copyWith =>
      throw _privateConstructorUsedError;
}
