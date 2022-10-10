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
    required TResult Function(
            TokenType tokenType, Expression left, Expression right)
        binary,
    required TResult Function(TokenType tokenType, Expression expression) unary,
    required TResult Function(num number) number,
    required TResult Function(String string) string,
    required TResult Function(bool boolean) boolean,
    required TResult Function() nil,
    required TResult Function(Expression expression) grouping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Number value) number,
    required TResult Function(StringExpression value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
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
    required TResult Function(
            TokenType tokenType, Expression left, Expression right)
        binary,
    required TResult Function(TokenType tokenType, Expression expression) unary,
    required TResult Function(num number) number,
    required TResult Function(String string) string,
    required TResult Function(bool boolean) boolean,
    required TResult Function() nil,
    required TResult Function(Expression expression) grouping,
  }) {
    return ternary(predicate, yes, no);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
  }) {
    return ternary?.call(predicate, yes, no);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
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
    required TResult Function(Number value) number,
    required TResult Function(StringExpression value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) {
    return ternary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) {
    return ternary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
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
  $Res call({TokenType tokenType, Expression left, Expression right});

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
    Object? tokenType = freezed,
    Object? left = freezed,
    Object? right = freezed,
  }) {
    return _then(_$Binary(
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as TokenType,
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
      {required this.tokenType, required this.left, required this.right});

  @override
  final TokenType tokenType;
  @override
  final Expression left;
  @override
  final Expression right;

  @override
  String toString() {
    return 'Expression.binary(tokenType: $tokenType, left: $left, right: $right)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Binary &&
            const DeepCollectionEquality().equals(other.tokenType, tokenType) &&
            const DeepCollectionEquality().equals(other.left, left) &&
            const DeepCollectionEquality().equals(other.right, right));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tokenType),
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
    required TResult Function(
            TokenType tokenType, Expression left, Expression right)
        binary,
    required TResult Function(TokenType tokenType, Expression expression) unary,
    required TResult Function(num number) number,
    required TResult Function(String string) string,
    required TResult Function(bool boolean) boolean,
    required TResult Function() nil,
    required TResult Function(Expression expression) grouping,
  }) {
    return binary(tokenType, left, right);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
  }) {
    return binary?.call(tokenType, left, right);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
    required TResult orElse(),
  }) {
    if (binary != null) {
      return binary(tokenType, left, right);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Number value) number,
    required TResult Function(StringExpression value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) {
    return binary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) {
    return binary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
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
      {required final TokenType tokenType,
      required final Expression left,
      required final Expression right}) = _$Binary;

  TokenType get tokenType;
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
  $Res call({TokenType tokenType, Expression expression});

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
    Object? tokenType = freezed,
    Object? expression = freezed,
  }) {
    return _then(_$Unary(
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as TokenType,
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

class _$Unary implements Unary {
  const _$Unary({required this.tokenType, required this.expression});

  @override
  final TokenType tokenType;
  @override
  final Expression expression;

  @override
  String toString() {
    return 'Expression.unary(tokenType: $tokenType, expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unary &&
            const DeepCollectionEquality().equals(other.tokenType, tokenType) &&
            const DeepCollectionEquality()
                .equals(other.expression, expression));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tokenType),
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
    required TResult Function(
            TokenType tokenType, Expression left, Expression right)
        binary,
    required TResult Function(TokenType tokenType, Expression expression) unary,
    required TResult Function(num number) number,
    required TResult Function(String string) string,
    required TResult Function(bool boolean) boolean,
    required TResult Function() nil,
    required TResult Function(Expression expression) grouping,
  }) {
    return unary(tokenType, expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
  }) {
    return unary?.call(tokenType, expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
    required TResult orElse(),
  }) {
    if (unary != null) {
      return unary(tokenType, expression);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Number value) number,
    required TResult Function(StringExpression value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) {
    return unary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) {
    return unary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
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
      {required final TokenType tokenType,
      required final Expression expression}) = _$Unary;

  TokenType get tokenType;
  Expression get expression;
  @JsonKey(ignore: true)
  _$$UnaryCopyWith<_$Unary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberCopyWith<$Res> {
  factory _$$NumberCopyWith(_$Number value, $Res Function(_$Number) then) =
      __$$NumberCopyWithImpl<$Res>;
  $Res call({num number});
}

/// @nodoc
class __$$NumberCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$NumberCopyWith<$Res> {
  __$$NumberCopyWithImpl(_$Number _value, $Res Function(_$Number) _then)
      : super(_value, (v) => _then(v as _$Number));

  @override
  _$Number get _value => super._value as _$Number;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(_$Number(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$Number implements Number {
  const _$Number(this.number);

  @override
  final num number;

  @override
  String toString() {
    return 'Expression.number(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Number &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$NumberCopyWith<_$Number> get copyWith =>
      __$$NumberCopyWithImpl<_$Number>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(
            TokenType tokenType, Expression left, Expression right)
        binary,
    required TResult Function(TokenType tokenType, Expression expression) unary,
    required TResult Function(num number) number,
    required TResult Function(String string) string,
    required TResult Function(bool boolean) boolean,
    required TResult Function() nil,
    required TResult Function(Expression expression) grouping,
  }) {
    return number(this.number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
  }) {
    return number?.call(this.number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this.number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Number value) number,
    required TResult Function(StringExpression value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) {
    return number(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) {
    return number?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this);
    }
    return orElse();
  }
}

abstract class Number implements Expression {
  const factory Number(final num number) = _$Number;

  num get number;
  @JsonKey(ignore: true)
  _$$NumberCopyWith<_$Number> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StringExpressionCopyWith<$Res> {
  factory _$$StringExpressionCopyWith(
          _$StringExpression value, $Res Function(_$StringExpression) then) =
      __$$StringExpressionCopyWithImpl<$Res>;
  $Res call({String string});
}

/// @nodoc
class __$$StringExpressionCopyWithImpl<$Res>
    extends _$ExpressionCopyWithImpl<$Res>
    implements _$$StringExpressionCopyWith<$Res> {
  __$$StringExpressionCopyWithImpl(
      _$StringExpression _value, $Res Function(_$StringExpression) _then)
      : super(_value, (v) => _then(v as _$StringExpression));

  @override
  _$StringExpression get _value => super._value as _$StringExpression;

  @override
  $Res call({
    Object? string = freezed,
  }) {
    return _then(_$StringExpression(
      string == freezed
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StringExpression implements StringExpression {
  const _$StringExpression(this.string);

  @override
  final String string;

  @override
  String toString() {
    return 'Expression.string(string: $string)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringExpression &&
            const DeepCollectionEquality().equals(other.string, string));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(string));

  @JsonKey(ignore: true)
  @override
  _$$StringExpressionCopyWith<_$StringExpression> get copyWith =>
      __$$StringExpressionCopyWithImpl<_$StringExpression>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(
            TokenType tokenType, Expression left, Expression right)
        binary,
    required TResult Function(TokenType tokenType, Expression expression) unary,
    required TResult Function(num number) number,
    required TResult Function(String string) string,
    required TResult Function(bool boolean) boolean,
    required TResult Function() nil,
    required TResult Function(Expression expression) grouping,
  }) {
    return string(this.string);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
  }) {
    return string?.call(this.string);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this.string);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Number value) number,
    required TResult Function(StringExpression value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }
}

abstract class StringExpression implements Expression {
  const factory StringExpression(final String string) = _$StringExpression;

  String get string;
  @JsonKey(ignore: true)
  _$$StringExpressionCopyWith<_$StringExpression> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoolCopyWith<$Res> {
  factory _$$BoolCopyWith(_$Bool value, $Res Function(_$Bool) then) =
      __$$BoolCopyWithImpl<$Res>;
  $Res call({bool boolean});
}

/// @nodoc
class __$$BoolCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$BoolCopyWith<$Res> {
  __$$BoolCopyWithImpl(_$Bool _value, $Res Function(_$Bool) _then)
      : super(_value, (v) => _then(v as _$Bool));

  @override
  _$Bool get _value => super._value as _$Bool;

  @override
  $Res call({
    Object? boolean = freezed,
  }) {
    return _then(_$Bool(
      boolean == freezed
          ? _value.boolean
          : boolean // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Bool implements Bool {
  const _$Bool(this.boolean);

  @override
  final bool boolean;

  @override
  String toString() {
    return 'Expression.boolean(boolean: $boolean)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Bool &&
            const DeepCollectionEquality().equals(other.boolean, boolean));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(boolean));

  @JsonKey(ignore: true)
  @override
  _$$BoolCopyWith<_$Bool> get copyWith =>
      __$$BoolCopyWithImpl<_$Bool>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(
            TokenType tokenType, Expression left, Expression right)
        binary,
    required TResult Function(TokenType tokenType, Expression expression) unary,
    required TResult Function(num number) number,
    required TResult Function(String string) string,
    required TResult Function(bool boolean) boolean,
    required TResult Function() nil,
    required TResult Function(Expression expression) grouping,
  }) {
    return boolean(this.boolean);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
  }) {
    return boolean?.call(this.boolean);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this.boolean);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Number value) number,
    required TResult Function(StringExpression value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }
}

abstract class Bool implements Expression {
  const factory Bool(final bool boolean) = _$Bool;

  bool get boolean;
  @JsonKey(ignore: true)
  _$$BoolCopyWith<_$Bool> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NilCopyWith<$Res> {
  factory _$$NilCopyWith(_$Nil value, $Res Function(_$Nil) then) =
      __$$NilCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NilCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$NilCopyWith<$Res> {
  __$$NilCopyWithImpl(_$Nil _value, $Res Function(_$Nil) _then)
      : super(_value, (v) => _then(v as _$Nil));

  @override
  _$Nil get _value => super._value as _$Nil;
}

/// @nodoc

class _$Nil implements Nil {
  const _$Nil();

  @override
  String toString() {
    return 'Expression.nil()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Nil);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Expression predicate, Expression yes, Expression no)
        ternary,
    required TResult Function(
            TokenType tokenType, Expression left, Expression right)
        binary,
    required TResult Function(TokenType tokenType, Expression expression) unary,
    required TResult Function(num number) number,
    required TResult Function(String string) string,
    required TResult Function(bool boolean) boolean,
    required TResult Function() nil,
    required TResult Function(Expression expression) grouping,
  }) {
    return nil();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
  }) {
    return nil?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
    required TResult orElse(),
  }) {
    if (nil != null) {
      return nil();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ternary value) ternary,
    required TResult Function(Binary value) binary,
    required TResult Function(Unary value) unary,
    required TResult Function(Number value) number,
    required TResult Function(StringExpression value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) {
    return nil(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) {
    return nil?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
    required TResult orElse(),
  }) {
    if (nil != null) {
      return nil(this);
    }
    return orElse();
  }
}

abstract class Nil implements Expression {
  const factory Nil() = _$Nil;
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
    required TResult Function(
            TokenType tokenType, Expression left, Expression right)
        binary,
    required TResult Function(TokenType tokenType, Expression expression) unary,
    required TResult Function(num number) number,
    required TResult Function(String string) string,
    required TResult Function(bool boolean) boolean,
    required TResult Function() nil,
    required TResult Function(Expression expression) grouping,
  }) {
    return grouping(expression);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
  }) {
    return grouping?.call(expression);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Expression predicate, Expression yes, Expression no)?
        ternary,
    TResult Function(TokenType tokenType, Expression left, Expression right)?
        binary,
    TResult Function(TokenType tokenType, Expression expression)? unary,
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
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
    required TResult Function(Number value) number,
    required TResult Function(StringExpression value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) {
    return grouping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) {
    return grouping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ternary value)? ternary,
    TResult Function(Binary value)? binary,
    TResult Function(Unary value)? unary,
    TResult Function(Number value)? number,
    TResult Function(StringExpression value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
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
