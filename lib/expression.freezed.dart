// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'expression.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Expression {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(Token token, Expression left, Expression right)
        binary,
    required TResult Function(Token token, Expression expression) unary,
    required TResult Function(Token token) variable,
    required TResult Function(dynamic value) literal,
    required TResult Function(
            Expression callee, List<List<Expression>> invocations)
        invocation,
    required TResult Function(Expression expression) grouping,
    required TResult Function(Token token, Expression expression) assignment,
    required TResult Function(
            Token token, List<Token> parameters, Statement body)
        function,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Identifier value) variable,
    required TResult Function(Literal value) literal,
    required TResult Function(Invocation value) invocation,
    required TResult Function(Grouping value) grouping,
    required TResult Function(Assignment value) assignment,
    required TResult Function(FunctionExpression value) function,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpressionCopyWith<$Res> {
  factory $ExpressionCopyWith(
          Expression value, $Res Function(Expression) then) =
      _$ExpressionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExpressionCopyWithImpl<$Res> implements $ExpressionCopyWith<$Res> {
  _$ExpressionCopyWithImpl(this._value, this._then);

  final Expression _value;
  // ignore: unused_field
  final $Res Function(Expression) _then;
}

/// @nodoc
abstract class _$$TernaryCopyWith<$Res> {
  factory _$$TernaryCopyWith(_$Ternary value, $Res Function(_$Ternary) then) =
      __$$TernaryCopyWithImpl<$Res>;
  $Res call({Expression predicate, Expression yes, Expression no});

  $ExpressionCopyWith<$Res> get predicate;
  $ExpressionCopyWith<$Res> get yes;
  $ExpressionCopyWith<$Res> get no;
}

/// @nodoc
class __$$TernaryCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$TernaryCopyWith<$Res> {
  __$$TernaryCopyWithImpl(_$Ternary _value, $Res Function(_$Ternary) _then)
      : super(_value, (v) => _then(v as _$Ternary));

  @override
  _$Ternary get _value => super._value as _$Ternary;

  @override
  $Res call({
    Object? predicate = freezed,
    Object? yes = freezed,
    Object? no = freezed,
  }) {
    return _then(_$Ternary(
      predicate: predicate == freezed
          ? _value.predicate
          : predicate // ignore: cast_nullable_to_non_nullable
              as Expression,
      yes: yes == freezed
          ? _value.yes
          : yes // ignore: cast_nullable_to_non_nullable
              as Expression,
      no: no == freezed
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as Expression,
    ));
  }

  @override
  $ExpressionCopyWith<$Res> get predicate {
    return $ExpressionCopyWith<$Res>(_value.predicate, (value) {
      return _then(_value.copyWith(predicate: value));
    });
  }

  @override
  $ExpressionCopyWith<$Res> get yes {
    return $ExpressionCopyWith<$Res>(_value.yes, (value) {
      return _then(_value.copyWith(yes: value));
    });
  }

  @override
  $ExpressionCopyWith<$Res> get no {
    return $ExpressionCopyWith<$Res>(_value.no, (value) {
      return _then(_value.copyWith(no: value));
    });
  }
}

/// @nodoc

class _$Ternary implements Ternary {
  const _$Ternary(
      {required this.predicate, required this.yes, required this.no});

  @override
  final Expression predicate;
  @override
  final Expression yes;
  @override
  final Expression no;

  @override
  String toString() {
    return 'Expression.ternary(predicate: $predicate, yes: $yes, no: $no)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ternary &&
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
  _$$TernaryCopyWith<_$Ternary> get copyWith =>
      __$$TernaryCopyWithImpl<_$Ternary>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(Token token, Expression left, Expression right)
        binary,
    required TResult Function(Token token, Expression expression) unary,
    required TResult Function(Token token) variable,
    required TResult Function(dynamic value) literal,
    required TResult Function(
            Expression callee, List<List<Expression>> invocations)
        invocation,
    required TResult Function(Expression expression) grouping,
    required TResult Function(Token token, Expression expression) assignment,
    required TResult Function(
            Token token, List<Token> parameters, Statement body)
        function,
  }) {
    return ternary(predicate, yes, no);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
  }) {
    return ternary?.call(predicate, yes, no);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
    required TResult orElse(),
  }) {
    if (ternary != null) {
      return ternary(predicate, yes, no);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Identifier value) variable,
    required TResult Function(Literal value) literal,
    required TResult Function(Invocation value) invocation,
    required TResult Function(Grouping value) grouping,
    required TResult Function(Assignment value) assignment,
    required TResult Function(FunctionExpression value) function,
  }) {
    return ternary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
  }) {
    return ternary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
    required TResult orElse(),
  }) {
    if (ternary != null) {
      return ternary(this);
    }
    return orElse();
  }
}

abstract class Ternary implements Expression {
  const factory Ternary(
      {required final Expression predicate,
      required final Expression yes,
      required final Expression no}) = _$Ternary;

  Expression get predicate;
  Expression get yes;
  Expression get no;
  @JsonKey(ignore: true)
  _$$TernaryCopyWith<_$Ternary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BinaryCopyWith<$Res> {
  factory _$$BinaryCopyWith(_$Binary value, $Res Function(_$Binary) then) =
      __$$BinaryCopyWithImpl<$Res>;
  $Res call({Token token, Expression left, Expression right});

  $TokenCopyWith<$Res> get token;
  $ExpressionCopyWith<$Res> get left;
  $ExpressionCopyWith<$Res> get right;
}

/// @nodoc
class __$$BinaryCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$BinaryCopyWith<$Res> {
  __$$BinaryCopyWithImpl(_$Binary _value, $Res Function(_$Binary) _then)
      : super(_value, (v) => _then(v as _$Binary));

  @override
  _$Binary get _value => super._value as _$Binary;

  @override
  $Res call({
    Object? token = freezed,
    Object? left = freezed,
    Object? right = freezed,
  }) {
    return _then(_$Binary(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as Expression,
      right: right == freezed
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as Expression,
    ));
  }

  @override
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }

  @override
  $ExpressionCopyWith<$Res> get left {
    return $ExpressionCopyWith<$Res>(_value.left, (value) {
      return _then(_value.copyWith(left: value));
    });
  }

  @override
  $ExpressionCopyWith<$Res> get right {
    return $ExpressionCopyWith<$Res>(_value.right, (value) {
      return _then(_value.copyWith(right: value));
    });
  }
}

/// @nodoc

class _$Binary implements Binary {
  const _$Binary(
      {required this.token, required this.left, required this.right});

  @override
  final Token token;
  @override
  final Expression left;
  @override
  final Expression right;

  @override
  String toString() {
    return 'Expression.binary(token: $token, left: $left, right: $right)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Binary &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.left, left) &&
            const DeepCollectionEquality().equals(other.right, right));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(left),
      const DeepCollectionEquality().hash(right));

  @JsonKey(ignore: true)
  @override
  _$$BinaryCopyWith<_$Binary> get copyWith =>
      __$$BinaryCopyWithImpl<_$Binary>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(Token token, Expression left, Expression right)
        binary,
    required TResult Function(Token token, Expression expression) unary,
    required TResult Function(Token token) variable,
    required TResult Function(dynamic value) literal,
    required TResult Function(
            Expression callee, List<List<Expression>> invocations)
        invocation,
    required TResult Function(Expression expression) grouping,
    required TResult Function(Token token, Expression expression) assignment,
    required TResult Function(
            Token token, List<Token> parameters, Statement body)
        function,
  }) {
    return binary(token, left, right);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
  }) {
    return binary?.call(token, left, right);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
    required TResult orElse(),
  }) {
    if (binary != null) {
      return binary(token, left, right);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Identifier value) variable,
    required TResult Function(Literal value) literal,
    required TResult Function(Invocation value) invocation,
    required TResult Function(Grouping value) grouping,
    required TResult Function(Assignment value) assignment,
    required TResult Function(FunctionExpression value) function,
  }) {
    return binary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
  }) {
    return binary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
    required TResult orElse(),
  }) {
    if (binary != null) {
      return binary(this);
    }
    return orElse();
  }
}

abstract class Binary implements Expression {
  const factory Binary(
      {required final Token token,
      required final Expression left,
      required final Expression right}) = _$Binary;

  Token get token;
  Expression get left;
  Expression get right;
  @JsonKey(ignore: true)
  _$$BinaryCopyWith<_$Binary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnaryCopyWith<$Res> {
  factory _$$UnaryCopyWith(_$Unary value, $Res Function(_$Unary) then) =
      __$$UnaryCopyWithImpl<$Res>;
  $Res call({Token token, Expression expression});

  $TokenCopyWith<$Res> get token;
  $ExpressionCopyWith<$Res> get expression;
}

/// @nodoc
class __$$UnaryCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$UnaryCopyWith<$Res> {
  __$$UnaryCopyWithImpl(_$Unary _value, $Res Function(_$Unary) _then)
      : super(_value, (v) => _then(v as _$Unary));

  @override
  _$Unary get _value => super._value as _$Unary;

  @override
  $Res call({
    Object? token = freezed,
    Object? expression = freezed,
  }) {
    return _then(_$Unary(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as Expression,
    ));
  }

  @override
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
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

class _$Unary implements Unary {
  const _$Unary({required this.token, required this.expression});

  @override
  final Token token;
  @override
  final Expression expression;

  @override
  String toString() {
    return 'Expression.unary(token: $token, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unary &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.expression, expression));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(expression));

  @JsonKey(ignore: true)
  @override
  _$$UnaryCopyWith<_$Unary> get copyWith =>
      __$$UnaryCopyWithImpl<_$Unary>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(Token token, Expression left, Expression right)
        binary,
    required TResult Function(Token token, Expression expression) unary,
    required TResult Function(Token token) variable,
    required TResult Function(dynamic value) literal,
    required TResult Function(
            Expression callee, List<List<Expression>> invocations)
        invocation,
    required TResult Function(Expression expression) grouping,
    required TResult Function(Token token, Expression expression) assignment,
    required TResult Function(
            Token token, List<Token> parameters, Statement body)
        function,
  }) {
    return unary(token, expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
  }) {
    return unary?.call(token, expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
    required TResult orElse(),
  }) {
    if (unary != null) {
      return unary(token, expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Identifier value) variable,
    required TResult Function(Literal value) literal,
    required TResult Function(Invocation value) invocation,
    required TResult Function(Grouping value) grouping,
    required TResult Function(Assignment value) assignment,
    required TResult Function(FunctionExpression value) function,
  }) {
    return unary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
  }) {
    return unary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
    required TResult orElse(),
  }) {
    if (unary != null) {
      return unary(this);
    }
    return orElse();
  }
}

abstract class Unary implements Expression {
  const factory Unary(
      {required final Token token,
      required final Expression expression}) = _$Unary;

  Token get token;
  Expression get expression;
  @JsonKey(ignore: true)
  _$$UnaryCopyWith<_$Unary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdentifierCopyWith<$Res> {
  factory _$$IdentifierCopyWith(
          _$Identifier value, $Res Function(_$Identifier) then) =
      __$$IdentifierCopyWithImpl<$Res>;
  $Res call({Token token});

  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$$IdentifierCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$IdentifierCopyWith<$Res> {
  __$$IdentifierCopyWithImpl(
      _$Identifier _value, $Res Function(_$Identifier) _then)
      : super(_value, (v) => _then(v as _$Identifier));

  @override
  _$Identifier get _value => super._value as _$Identifier;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$Identifier(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }

  @override
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc

class _$Identifier implements Identifier {
  const _$Identifier({required this.token});

  @override
  final Token token;

  @override
  String toString() {
    return 'Expression.variable(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Identifier &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$IdentifierCopyWith<_$Identifier> get copyWith =>
      __$$IdentifierCopyWithImpl<_$Identifier>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(Token token, Expression left, Expression right)
        binary,
    required TResult Function(Token token, Expression expression) unary,
    required TResult Function(Token token) variable,
    required TResult Function(dynamic value) literal,
    required TResult Function(
            Expression callee, List<List<Expression>> invocations)
        invocation,
    required TResult Function(Expression expression) grouping,
    required TResult Function(Token token, Expression expression) assignment,
    required TResult Function(
            Token token, List<Token> parameters, Statement body)
        function,
  }) {
    return variable(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
  }) {
    return variable?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
    required TResult orElse(),
  }) {
    if (variable != null) {
      return variable(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Identifier value) variable,
    required TResult Function(Literal value) literal,
    required TResult Function(Invocation value) invocation,
    required TResult Function(Grouping value) grouping,
    required TResult Function(Assignment value) assignment,
    required TResult Function(FunctionExpression value) function,
  }) {
    return variable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
  }) {
    return variable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
    required TResult orElse(),
  }) {
    if (variable != null) {
      return variable(this);
    }
    return orElse();
  }
}

abstract class Identifier implements Expression {
  const factory Identifier({required final Token token}) = _$Identifier;

  Token get token;
  @JsonKey(ignore: true)
  _$$IdentifierCopyWith<_$Identifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LiteralCopyWith<$Res> {
  factory _$$LiteralCopyWith(_$Literal value, $Res Function(_$Literal) then) =
      __$$LiteralCopyWithImpl<$Res>;
  $Res call({dynamic value});
}

/// @nodoc
class __$$LiteralCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$LiteralCopyWith<$Res> {
  __$$LiteralCopyWithImpl(_$Literal _value, $Res Function(_$Literal) _then)
      : super(_value, (v) => _then(v as _$Literal));

  @override
  _$Literal get _value => super._value as _$Literal;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$Literal(
      value == freezed ? _value.value : value,
    ));
  }
}

/// @nodoc

class _$Literal implements Literal {
  const _$Literal(this.value);

  @override
  final dynamic value;

  @override
  String toString() {
    return 'Expression.literal(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Literal &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$LiteralCopyWith<_$Literal> get copyWith =>
      __$$LiteralCopyWithImpl<_$Literal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(Token token, Expression left, Expression right)
        binary,
    required TResult Function(Token token, Expression expression) unary,
    required TResult Function(Token token) variable,
    required TResult Function(dynamic value) literal,
    required TResult Function(
            Expression callee, List<List<Expression>> invocations)
        invocation,
    required TResult Function(Expression expression) grouping,
    required TResult Function(Token token, Expression expression) assignment,
    required TResult Function(
            Token token, List<Token> parameters, Statement body)
        function,
  }) {
    return literal(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
  }) {
    return literal?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
    required TResult orElse(),
  }) {
    if (literal != null) {
      return literal(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Identifier value) variable,
    required TResult Function(Literal value) literal,
    required TResult Function(Invocation value) invocation,
    required TResult Function(Grouping value) grouping,
    required TResult Function(Assignment value) assignment,
    required TResult Function(FunctionExpression value) function,
  }) {
    return literal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
  }) {
    return literal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
    required TResult orElse(),
  }) {
    if (literal != null) {
      return literal(this);
    }
    return orElse();
  }
}

abstract class Literal implements Expression {
  const factory Literal(final dynamic value) = _$Literal;

  dynamic get value;
  @JsonKey(ignore: true)
  _$$LiteralCopyWith<_$Literal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvocationCopyWith<$Res> {
  factory _$$InvocationCopyWith(
          _$Invocation value, $Res Function(_$Invocation) then) =
      __$$InvocationCopyWithImpl<$Res>;
  $Res call({Expression callee, List<List<Expression>> invocations});

  $ExpressionCopyWith<$Res> get callee;
}

/// @nodoc
class __$$InvocationCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$InvocationCopyWith<$Res> {
  __$$InvocationCopyWithImpl(
      _$Invocation _value, $Res Function(_$Invocation) _then)
      : super(_value, (v) => _then(v as _$Invocation));

  @override
  _$Invocation get _value => super._value as _$Invocation;

  @override
  $Res call({
    Object? callee = freezed,
    Object? invocations = freezed,
  }) {
    return _then(_$Invocation(
      callee: callee == freezed
          ? _value.callee
          : callee // ignore: cast_nullable_to_non_nullable
              as Expression,
      invocations: invocations == freezed
          ? _value._invocations
          : invocations // ignore: cast_nullable_to_non_nullable
              as List<List<Expression>>,
    ));
  }

  @override
  $ExpressionCopyWith<$Res> get callee {
    return $ExpressionCopyWith<$Res>(_value.callee, (value) {
      return _then(_value.copyWith(callee: value));
    });
  }
}

/// @nodoc

class _$Invocation implements Invocation {
  const _$Invocation(
      {required this.callee, required final List<List<Expression>> invocations})
      : _invocations = invocations;

  @override
  final Expression callee;
  final List<List<Expression>> _invocations;
  @override
  List<List<Expression>> get invocations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invocations);
  }

  @override
  String toString() {
    return 'Expression.invocation(callee: $callee, invocations: $invocations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Invocation &&
            const DeepCollectionEquality().equals(other.callee, callee) &&
            const DeepCollectionEquality()
                .equals(other._invocations, _invocations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(callee),
      const DeepCollectionEquality().hash(_invocations));

  @JsonKey(ignore: true)
  @override
  _$$InvocationCopyWith<_$Invocation> get copyWith =>
      __$$InvocationCopyWithImpl<_$Invocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(Token token, Expression left, Expression right)
        binary,
    required TResult Function(Token token, Expression expression) unary,
    required TResult Function(Token token) variable,
    required TResult Function(dynamic value) literal,
    required TResult Function(
            Expression callee, List<List<Expression>> invocations)
        invocation,
    required TResult Function(Expression expression) grouping,
    required TResult Function(Token token, Expression expression) assignment,
    required TResult Function(
            Token token, List<Token> parameters, Statement body)
        function,
  }) {
    return invocation(callee, invocations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
  }) {
    return invocation?.call(callee, invocations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
    required TResult orElse(),
  }) {
    if (invocation != null) {
      return invocation(callee, invocations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Identifier value) variable,
    required TResult Function(Literal value) literal,
    required TResult Function(Invocation value) invocation,
    required TResult Function(Grouping value) grouping,
    required TResult Function(Assignment value) assignment,
    required TResult Function(FunctionExpression value) function,
  }) {
    return invocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
  }) {
    return invocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
    required TResult orElse(),
  }) {
    if (invocation != null) {
      return invocation(this);
    }
    return orElse();
  }
}

abstract class Invocation implements Expression {
  const factory Invocation(
      {required final Expression callee,
      required final List<List<Expression>> invocations}) = _$Invocation;

  Expression get callee;
  List<List<Expression>> get invocations;
  @JsonKey(ignore: true)
  _$$InvocationCopyWith<_$Invocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupingCopyWith<$Res> {
  factory _$$GroupingCopyWith(
          _$Grouping value, $Res Function(_$Grouping) then) =
      __$$GroupingCopyWithImpl<$Res>;
  $Res call({Expression expression});

  $ExpressionCopyWith<$Res> get expression;
}

/// @nodoc
class __$$GroupingCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$GroupingCopyWith<$Res> {
  __$$GroupingCopyWithImpl(_$Grouping _value, $Res Function(_$Grouping) _then)
      : super(_value, (v) => _then(v as _$Grouping));

  @override
  _$Grouping get _value => super._value as _$Grouping;

  @override
  $Res call({
    Object? expression = freezed,
  }) {
    return _then(_$Grouping(
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

class _$Grouping implements Grouping {
  const _$Grouping(this.expression);

  @override
  final Expression expression;

  @override
  String toString() {
    return 'Expression.grouping(expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Grouping &&
            const DeepCollectionEquality()
                .equals(other.expression, expression));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(expression));

  @JsonKey(ignore: true)
  @override
  _$$GroupingCopyWith<_$Grouping> get copyWith =>
      __$$GroupingCopyWithImpl<_$Grouping>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(Token token, Expression left, Expression right)
        binary,
    required TResult Function(Token token, Expression expression) unary,
    required TResult Function(Token token) variable,
    required TResult Function(dynamic value) literal,
    required TResult Function(
            Expression callee, List<List<Expression>> invocations)
        invocation,
    required TResult Function(Expression expression) grouping,
    required TResult Function(Token token, Expression expression) assignment,
    required TResult Function(
            Token token, List<Token> parameters, Statement body)
        function,
  }) {
    return grouping(expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
  }) {
    return grouping?.call(expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
    required TResult orElse(),
  }) {
    if (grouping != null) {
      return grouping(expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Identifier value) variable,
    required TResult Function(Literal value) literal,
    required TResult Function(Invocation value) invocation,
    required TResult Function(Grouping value) grouping,
    required TResult Function(Assignment value) assignment,
    required TResult Function(FunctionExpression value) function,
  }) {
    return grouping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
  }) {
    return grouping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
    required TResult orElse(),
  }) {
    if (grouping != null) {
      return grouping(this);
    }
    return orElse();
  }
}

abstract class Grouping implements Expression {
  const factory Grouping(final Expression expression) = _$Grouping;

  Expression get expression;
  @JsonKey(ignore: true)
  _$$GroupingCopyWith<_$Grouping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignmentCopyWith<$Res> {
  factory _$$AssignmentCopyWith(
          _$Assignment value, $Res Function(_$Assignment) then) =
      __$$AssignmentCopyWithImpl<$Res>;
  $Res call({Token token, Expression expression});

  $TokenCopyWith<$Res> get token;
  $ExpressionCopyWith<$Res> get expression;
}

/// @nodoc
class __$$AssignmentCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$AssignmentCopyWith<$Res> {
  __$$AssignmentCopyWithImpl(
      _$Assignment _value, $Res Function(_$Assignment) _then)
      : super(_value, (v) => _then(v as _$Assignment));

  @override
  _$Assignment get _value => super._value as _$Assignment;

  @override
  $Res call({
    Object? token = freezed,
    Object? expression = freezed,
  }) {
    return _then(_$Assignment(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      expression: expression == freezed
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as Expression,
    ));
  }

  @override
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
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

class _$Assignment implements Assignment {
  const _$Assignment({required this.token, required this.expression});

  @override
  final Token token;
  @override
  final Expression expression;

  @override
  String toString() {
    return 'Expression.assignment(token: $token, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Assignment &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.expression, expression));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(expression));

  @JsonKey(ignore: true)
  @override
  _$$AssignmentCopyWith<_$Assignment> get copyWith =>
      __$$AssignmentCopyWithImpl<_$Assignment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(Token token, Expression left, Expression right)
        binary,
    required TResult Function(Token token, Expression expression) unary,
    required TResult Function(Token token) variable,
    required TResult Function(dynamic value) literal,
    required TResult Function(
            Expression callee, List<List<Expression>> invocations)
        invocation,
    required TResult Function(Expression expression) grouping,
    required TResult Function(Token token, Expression expression) assignment,
    required TResult Function(
            Token token, List<Token> parameters, Statement body)
        function,
  }) {
    return assignment(token, expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
  }) {
    return assignment?.call(token, expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
    required TResult orElse(),
  }) {
    if (assignment != null) {
      return assignment(token, expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Identifier value) variable,
    required TResult Function(Literal value) literal,
    required TResult Function(Invocation value) invocation,
    required TResult Function(Grouping value) grouping,
    required TResult Function(Assignment value) assignment,
    required TResult Function(FunctionExpression value) function,
  }) {
    return assignment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
  }) {
    return assignment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
    required TResult orElse(),
  }) {
    if (assignment != null) {
      return assignment(this);
    }
    return orElse();
  }
}

abstract class Assignment implements Expression {
  const factory Assignment(
      {required final Token token,
      required final Expression expression}) = _$Assignment;

  Token get token;
  Expression get expression;
  @JsonKey(ignore: true)
  _$$AssignmentCopyWith<_$Assignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FunctionExpressionCopyWith<$Res> {
  factory _$$FunctionExpressionCopyWith(_$FunctionExpression value,
          $Res Function(_$FunctionExpression) then) =
      __$$FunctionExpressionCopyWithImpl<$Res>;
  $Res call({Token token, List<Token> parameters, Statement body});

  $TokenCopyWith<$Res> get token;
  $StatementCopyWith<$Res> get body;
}

/// @nodoc
class __$$FunctionExpressionCopyWithImpl<$Res>
    extends _$ExpressionCopyWithImpl<$Res>
    implements _$$FunctionExpressionCopyWith<$Res> {
  __$$FunctionExpressionCopyWithImpl(
      _$FunctionExpression _value, $Res Function(_$FunctionExpression) _then)
      : super(_value, (v) => _then(v as _$FunctionExpression));

  @override
  _$FunctionExpression get _value => super._value as _$FunctionExpression;

  @override
  $Res call({
    Object? token = freezed,
    Object? parameters = freezed,
    Object? body = freezed,
  }) {
    return _then(_$FunctionExpression(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      parameters: parameters == freezed
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<Token>,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Statement,
    ));
  }

  @override
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
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

class _$FunctionExpression implements FunctionExpression {
  const _$FunctionExpression(
      {required this.token,
      required final List<Token> parameters,
      required this.body})
      : _parameters = parameters;

  @override
  final Token token;
  final List<Token> _parameters;
  @override
  List<Token> get parameters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  @override
  final Statement body;

  @override
  String toString() {
    return 'Expression.function(token: $token, parameters: $parameters, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FunctionExpression &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$FunctionExpressionCopyWith<_$FunctionExpression> get copyWith =>
      __$$FunctionExpressionCopyWithImpl<_$FunctionExpression>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(Token token, Expression left, Expression right)
        binary,
    required TResult Function(Token token, Expression expression) unary,
    required TResult Function(Token token) variable,
    required TResult Function(dynamic value) literal,
    required TResult Function(
            Expression callee, List<List<Expression>> invocations)
        invocation,
    required TResult Function(Expression expression) grouping,
    required TResult Function(Token token, Expression expression) assignment,
    required TResult Function(
            Token token, List<Token> parameters, Statement body)
        function,
  }) {
    return function(token, parameters, body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
  }) {
    return function?.call(token, parameters, body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(Token token, Expression left, Expression right)? binary,
    TResult Function(Token token, Expression expression)? unary,
    TResult Function(Token token)? variable,
    TResult Function(dynamic value)? literal,
    TResult Function(Expression callee, List<List<Expression>> invocations)?
        invocation,
    TResult Function(Expression expression)? grouping,
    TResult Function(Token token, Expression expression)? assignment,
    TResult Function(Token token, List<Token> parameters, Statement body)?
        function,
    required TResult orElse(),
  }) {
    if (function != null) {
      return function(token, parameters, body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Identifier value) variable,
    required TResult Function(Literal value) literal,
    required TResult Function(Invocation value) invocation,
    required TResult Function(Grouping value) grouping,
    required TResult Function(Assignment value) assignment,
    required TResult Function(FunctionExpression value) function,
  }) {
    return function(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
  }) {
    return function?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Identifier value)? variable,
    TResult Function(Literal value)? literal,
    TResult Function(Invocation value)? invocation,
    TResult Function(Grouping value)? grouping,
    TResult Function(Assignment value)? assignment,
    TResult Function(FunctionExpression value)? function,
    required TResult orElse(),
  }) {
    if (function != null) {
      return function(this);
    }
    return orElse();
  }
}

abstract class FunctionExpression implements Expression {
  const factory FunctionExpression(
      {required final Token token,
      required final List<Token> parameters,
      required final Statement body}) = _$FunctionExpression;

  Token get token;
  List<Token> get parameters;
  Statement get body;
  @JsonKey(ignore: true)
  _$$FunctionExpressionCopyWith<_$FunctionExpression> get copyWith =>
      throw _privateConstructorUsedError;
}
