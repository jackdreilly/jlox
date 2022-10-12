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
    required TResult Function(Token brace, List<Statement> blocks) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
    required TResult Function(Token variable) uninitialized,
    required TResult Function(Expression predicate, Statement body) whileLoop,
    required TResult Function(Expression predicate, Statement yes) justIf,
    required TResult Function(Expression predicate, Statement yes, Statement no)
        ifElse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpressionStatement value) expression,
    required TResult Function(PrintStatement value) print,
    required TResult Function(BlockStatement value) block,
    required TResult Function(DeclarationStatement value) declaration,
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(While value) whileLoop,
    required TResult Function(JustIf value) justIf,
    required TResult Function(IfElse value) ifElse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
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
    required TResult Function(Token brace, List<Statement> blocks) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
    required TResult Function(Token variable) uninitialized,
    required TResult Function(Expression predicate, Statement body) whileLoop,
    required TResult Function(Expression predicate, Statement yes) justIf,
    required TResult Function(Expression predicate, Statement yes, Statement no)
        ifElse,
  }) {
    return expression(this.expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
  }) {
    return expression?.call(this.expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
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
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(While value) whileLoop,
    required TResult Function(JustIf value) justIf,
    required TResult Function(IfElse value) ifElse,
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
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
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
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
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
    required TResult Function(Token brace, List<Statement> blocks) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
    required TResult Function(Token variable) uninitialized,
    required TResult Function(Expression predicate, Statement body) whileLoop,
    required TResult Function(Expression predicate, Statement yes) justIf,
    required TResult Function(Expression predicate, Statement yes, Statement no)
        ifElse,
  }) {
    return print(this.expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
  }) {
    return print?.call(this.expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
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
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(While value) whileLoop,
    required TResult Function(JustIf value) justIf,
    required TResult Function(IfElse value) ifElse,
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
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
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
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
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
  $Res call({Token brace, List<Statement> blocks});

  $TokenCopyWith<$Res> get brace;
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
    Object? brace = freezed,
    Object? blocks = freezed,
  }) {
    return _then(_$BlockStatement(
      brace: brace == freezed
          ? _value.brace
          : brace // ignore: cast_nullable_to_non_nullable
              as Token,
      blocks: blocks == freezed
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<Statement>,
    ));
  }

  @override
  $TokenCopyWith<$Res> get brace {
    return $TokenCopyWith<$Res>(_value.brace, (value) {
      return _then(_value.copyWith(brace: value));
    });
  }
}

/// @nodoc

class _$BlockStatement implements BlockStatement {
  const _$BlockStatement(
      {required this.brace, required final List<Statement> blocks})
      : _blocks = blocks;

  @override
  final Token brace;
  final List<Statement> _blocks;
  @override
  List<Statement> get blocks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  String toString() {
    return 'Statement.block(brace: $brace, blocks: $blocks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockStatement &&
            const DeepCollectionEquality().equals(other.brace, brace) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(brace),
      const DeepCollectionEquality().hash(_blocks));

  @JsonKey(ignore: true)
  @override
  _$$BlockStatementCopyWith<_$BlockStatement> get copyWith =>
      __$$BlockStatementCopyWithImpl<_$BlockStatement>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expression expression) expression,
    required TResult Function(Expression expression) print,
    required TResult Function(Token brace, List<Statement> blocks) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
    required TResult Function(Token variable) uninitialized,
    required TResult Function(Expression predicate, Statement body) whileLoop,
    required TResult Function(Expression predicate, Statement yes) justIf,
    required TResult Function(Expression predicate, Statement yes, Statement no)
        ifElse,
  }) {
    return block(brace, blocks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
  }) {
    return block?.call(brace, blocks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
    required TResult orElse(),
  }) {
    if (block != null) {
      return block(brace, blocks);
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
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(While value) whileLoop,
    required TResult Function(JustIf value) justIf,
    required TResult Function(IfElse value) ifElse,
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
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
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
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
    required TResult orElse(),
  }) {
    if (block != null) {
      return block(this);
    }
    return orElse();
  }
}

abstract class BlockStatement implements Statement {
  const factory BlockStatement(
      {required final Token brace,
      required final List<Statement> blocks}) = _$BlockStatement;

  Token get brace;
  List<Statement> get blocks;
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
    required TResult Function(Token brace, List<Statement> blocks) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
    required TResult Function(Token variable) uninitialized,
    required TResult Function(Expression predicate, Statement body) whileLoop,
    required TResult Function(Expression predicate, Statement yes) justIf,
    required TResult Function(Expression predicate, Statement yes, Statement no)
        ifElse,
  }) {
    return declaration(variable, this.expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
  }) {
    return declaration?.call(variable, this.expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
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
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(While value) whileLoop,
    required TResult Function(JustIf value) justIf,
    required TResult Function(IfElse value) ifElse,
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
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
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
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
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

/// @nodoc
abstract class _$$UninitializedCopyWith<$Res> {
  factory _$$UninitializedCopyWith(
          _$Uninitialized value, $Res Function(_$Uninitialized) then) =
      __$$UninitializedCopyWithImpl<$Res>;
  $Res call({Token variable});

  $TokenCopyWith<$Res> get variable;
}

/// @nodoc
class __$$UninitializedCopyWithImpl<$Res> extends _$StatementCopyWithImpl<$Res>
    implements _$$UninitializedCopyWith<$Res> {
  __$$UninitializedCopyWithImpl(
      _$Uninitialized _value, $Res Function(_$Uninitialized) _then)
      : super(_value, (v) => _then(v as _$Uninitialized));

  @override
  _$Uninitialized get _value => super._value as _$Uninitialized;

  @override
  $Res call({
    Object? variable = freezed,
  }) {
    return _then(_$Uninitialized(
      variable == freezed
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as Token,
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

class _$Uninitialized implements Uninitialized {
  const _$Uninitialized(this.variable);

  @override
  final Token variable;

  @override
  String toString() {
    return 'Statement.uninitialized(variable: $variable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Uninitialized &&
            const DeepCollectionEquality().equals(other.variable, variable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(variable));

  @JsonKey(ignore: true)
  @override
  _$$UninitializedCopyWith<_$Uninitialized> get copyWith =>
      __$$UninitializedCopyWithImpl<_$Uninitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expression expression) expression,
    required TResult Function(Expression expression) print,
    required TResult Function(Token brace, List<Statement> blocks) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
    required TResult Function(Token variable) uninitialized,
    required TResult Function(Expression predicate, Statement body) whileLoop,
    required TResult Function(Expression predicate, Statement yes) justIf,
    required TResult Function(Expression predicate, Statement yes, Statement no)
        ifElse,
  }) {
    return uninitialized(variable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
  }) {
    return uninitialized?.call(variable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(variable);
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
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(While value) whileLoop,
    required TResult Function(JustIf value) justIf,
    required TResult Function(IfElse value) ifElse,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
  }) {
    return uninitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class Uninitialized implements Statement {
  const factory Uninitialized(final Token variable) = _$Uninitialized;

  Token get variable;
  @JsonKey(ignore: true)
  _$$UninitializedCopyWith<_$Uninitialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WhileCopyWith<$Res> {
  factory _$$WhileCopyWith(_$While value, $Res Function(_$While) then) =
      __$$WhileCopyWithImpl<$Res>;
  $Res call({Expression predicate, Statement body});

  $ExpressionCopyWith<$Res> get predicate;
  $StatementCopyWith<$Res> get body;
}

/// @nodoc
class __$$WhileCopyWithImpl<$Res> extends _$StatementCopyWithImpl<$Res>
    implements _$$WhileCopyWith<$Res> {
  __$$WhileCopyWithImpl(_$While _value, $Res Function(_$While) _then)
      : super(_value, (v) => _then(v as _$While));

  @override
  _$While get _value => super._value as _$While;

  @override
  $Res call({
    Object? predicate = freezed,
    Object? body = freezed,
  }) {
    return _then(_$While(
      predicate: predicate == freezed
          ? _value.predicate
          : predicate // ignore: cast_nullable_to_non_nullable
              as Expression,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Statement,
    ));
  }

  @override
  $ExpressionCopyWith<$Res> get predicate {
    return $ExpressionCopyWith<$Res>(_value.predicate, (value) {
      return _then(_value.copyWith(predicate: value));
    });
  }

  @override
  $StatementCopyWith<$Res> get body {
    return $StatementCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc

class _$While implements While {
  const _$While({required this.predicate, required this.body});

  @override
  final Expression predicate;
  @override
  final Statement body;

  @override
  String toString() {
    return 'Statement.whileLoop(predicate: $predicate, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$While &&
            const DeepCollectionEquality().equals(other.predicate, predicate) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(predicate),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$WhileCopyWith<_$While> get copyWith =>
      __$$WhileCopyWithImpl<_$While>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expression expression) expression,
    required TResult Function(Expression expression) print,
    required TResult Function(Token brace, List<Statement> blocks) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
    required TResult Function(Token variable) uninitialized,
    required TResult Function(Expression predicate, Statement body) whileLoop,
    required TResult Function(Expression predicate, Statement yes) justIf,
    required TResult Function(Expression predicate, Statement yes, Statement no)
        ifElse,
  }) {
    return whileLoop(predicate, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
  }) {
    return whileLoop?.call(predicate, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
    required TResult orElse(),
  }) {
    if (whileLoop != null) {
      return whileLoop(predicate, body);
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
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(While value) whileLoop,
    required TResult Function(JustIf value) justIf,
    required TResult Function(IfElse value) ifElse,
  }) {
    return whileLoop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
  }) {
    return whileLoop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
    required TResult orElse(),
  }) {
    if (whileLoop != null) {
      return whileLoop(this);
    }
    return orElse();
  }
}

abstract class While implements Statement {
  const factory While(
      {required final Expression predicate,
      required final Statement body}) = _$While;

  Expression get predicate;
  Statement get body;
  @JsonKey(ignore: true)
  _$$WhileCopyWith<_$While> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JustIfCopyWith<$Res> {
  factory _$$JustIfCopyWith(_$JustIf value, $Res Function(_$JustIf) then) =
      __$$JustIfCopyWithImpl<$Res>;
  $Res call({Expression predicate, Statement yes});

  $ExpressionCopyWith<$Res> get predicate;
  $StatementCopyWith<$Res> get yes;
}

/// @nodoc
class __$$JustIfCopyWithImpl<$Res> extends _$StatementCopyWithImpl<$Res>
    implements _$$JustIfCopyWith<$Res> {
  __$$JustIfCopyWithImpl(_$JustIf _value, $Res Function(_$JustIf) _then)
      : super(_value, (v) => _then(v as _$JustIf));

  @override
  _$JustIf get _value => super._value as _$JustIf;

  @override
  $Res call({
    Object? predicate = freezed,
    Object? yes = freezed,
  }) {
    return _then(_$JustIf(
      predicate: predicate == freezed
          ? _value.predicate
          : predicate // ignore: cast_nullable_to_non_nullable
              as Expression,
      yes: yes == freezed
          ? _value.yes
          : yes // ignore: cast_nullable_to_non_nullable
              as Statement,
    ));
  }

  @override
  $ExpressionCopyWith<$Res> get predicate {
    return $ExpressionCopyWith<$Res>(_value.predicate, (value) {
      return _then(_value.copyWith(predicate: value));
    });
  }

  @override
  $StatementCopyWith<$Res> get yes {
    return $StatementCopyWith<$Res>(_value.yes, (value) {
      return _then(_value.copyWith(yes: value));
    });
  }
}

/// @nodoc

class _$JustIf implements JustIf {
  const _$JustIf({required this.predicate, required this.yes});

  @override
  final Expression predicate;
  @override
  final Statement yes;

  @override
  String toString() {
    return 'Statement.justIf(predicate: $predicate, yes: $yes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JustIf &&
            const DeepCollectionEquality().equals(other.predicate, predicate) &&
            const DeepCollectionEquality().equals(other.yes, yes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(predicate),
      const DeepCollectionEquality().hash(yes));

  @JsonKey(ignore: true)
  @override
  _$$JustIfCopyWith<_$JustIf> get copyWith =>
      __$$JustIfCopyWithImpl<_$JustIf>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expression expression) expression,
    required TResult Function(Expression expression) print,
    required TResult Function(Token brace, List<Statement> blocks) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
    required TResult Function(Token variable) uninitialized,
    required TResult Function(Expression predicate, Statement body) whileLoop,
    required TResult Function(Expression predicate, Statement yes) justIf,
    required TResult Function(Expression predicate, Statement yes, Statement no)
        ifElse,
  }) {
    return justIf(predicate, yes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
  }) {
    return justIf?.call(predicate, yes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
    required TResult orElse(),
  }) {
    if (justIf != null) {
      return justIf(predicate, yes);
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
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(While value) whileLoop,
    required TResult Function(JustIf value) justIf,
    required TResult Function(IfElse value) ifElse,
  }) {
    return justIf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
  }) {
    return justIf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
    required TResult orElse(),
  }) {
    if (justIf != null) {
      return justIf(this);
    }
    return orElse();
  }
}

abstract class JustIf implements Statement {
  const factory JustIf(
      {required final Expression predicate,
      required final Statement yes}) = _$JustIf;

  Expression get predicate;
  Statement get yes;
  @JsonKey(ignore: true)
  _$$JustIfCopyWith<_$JustIf> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IfElseCopyWith<$Res> {
  factory _$$IfElseCopyWith(_$IfElse value, $Res Function(_$IfElse) then) =
      __$$IfElseCopyWithImpl<$Res>;
  $Res call({Expression predicate, Statement yes, Statement no});

  $ExpressionCopyWith<$Res> get predicate;
  $StatementCopyWith<$Res> get yes;
  $StatementCopyWith<$Res> get no;
}

/// @nodoc
class __$$IfElseCopyWithImpl<$Res> extends _$StatementCopyWithImpl<$Res>
    implements _$$IfElseCopyWith<$Res> {
  __$$IfElseCopyWithImpl(_$IfElse _value, $Res Function(_$IfElse) _then)
      : super(_value, (v) => _then(v as _$IfElse));

  @override
  _$IfElse get _value => super._value as _$IfElse;

  @override
  $Res call({
    Object? predicate = freezed,
    Object? yes = freezed,
    Object? no = freezed,
  }) {
    return _then(_$IfElse(
      predicate: predicate == freezed
          ? _value.predicate
          : predicate // ignore: cast_nullable_to_non_nullable
              as Expression,
      yes: yes == freezed
          ? _value.yes
          : yes // ignore: cast_nullable_to_non_nullable
              as Statement,
      no: no == freezed
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as Statement,
    ));
  }

  @override
  $ExpressionCopyWith<$Res> get predicate {
    return $ExpressionCopyWith<$Res>(_value.predicate, (value) {
      return _then(_value.copyWith(predicate: value));
    });
  }

  @override
  $StatementCopyWith<$Res> get yes {
    return $StatementCopyWith<$Res>(_value.yes, (value) {
      return _then(_value.copyWith(yes: value));
    });
  }

  @override
  $StatementCopyWith<$Res> get no {
    return $StatementCopyWith<$Res>(_value.no, (value) {
      return _then(_value.copyWith(no: value));
    });
  }
}

/// @nodoc

class _$IfElse implements IfElse {
  const _$IfElse(
      {required this.predicate, required this.yes, required this.no});

  @override
  final Expression predicate;
  @override
  final Statement yes;
  @override
  final Statement no;

  @override
  String toString() {
    return 'Statement.ifElse(predicate: $predicate, yes: $yes, no: $no)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IfElse &&
            const DeepCollectionEquality().equals(other.predicate, predicate) &&
            const DeepCollectionEquality().equals(other.yes, yes) &&
            const DeepCollectionEquality().equals(other.no, no));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(predicate),
      const DeepCollectionEquality().hash(yes),
      const DeepCollectionEquality().hash(no));

  @JsonKey(ignore: true)
  @override
  _$$IfElseCopyWith<_$IfElse> get copyWith =>
      __$$IfElseCopyWithImpl<_$IfElse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Expression expression) expression,
    required TResult Function(Expression expression) print,
    required TResult Function(Token brace, List<Statement> blocks) block,
    required TResult Function(Token variable, Expression expression)
        declaration,
    required TResult Function(Token variable) uninitialized,
    required TResult Function(Expression predicate, Statement body) whileLoop,
    required TResult Function(Expression predicate, Statement yes) justIf,
    required TResult Function(Expression predicate, Statement yes, Statement no)
        ifElse,
  }) {
    return ifElse(predicate, yes, no);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
  }) {
    return ifElse?.call(predicate, yes, no);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression expression)? expression,
    TResult Function(Expression expression)? print,
    TResult Function(Token brace, List<Statement> blocks)? block,
    TResult Function(Token variable, Expression expression)? declaration,
    TResult Function(Token variable)? uninitialized,
    TResult Function(Expression predicate, Statement body)? whileLoop,
    TResult Function(Expression predicate, Statement yes)? justIf,
    TResult Function(Expression predicate, Statement yes, Statement no)? ifElse,
    required TResult orElse(),
  }) {
    if (ifElse != null) {
      return ifElse(predicate, yes, no);
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
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(While value) whileLoop,
    required TResult Function(JustIf value) justIf,
    required TResult Function(IfElse value) ifElse,
  }) {
    return ifElse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
  }) {
    return ifElse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpressionStatement value)? expression,
    TResult Function(PrintStatement value)? print,
    TResult Function(BlockStatement value)? block,
    TResult Function(DeclarationStatement value)? declaration,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(While value)? whileLoop,
    TResult Function(JustIf value)? justIf,
    TResult Function(IfElse value)? ifElse,
    required TResult orElse(),
  }) {
    if (ifElse != null) {
      return ifElse(this);
    }
    return orElse();
  }
}

abstract class IfElse implements Statement {
  const factory IfElse(
      {required final Expression predicate,
      required final Statement yes,
      required final Statement no}) = _$IfElse;

  Expression get predicate;
  Statement get yes;
  Statement get no;
  @JsonKey(ignore: true)
  _$$IfElseCopyWith<_$IfElse> get copyWith =>
      throw _privateConstructorUsedError;
}
