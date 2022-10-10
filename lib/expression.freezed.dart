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
    required TResult Function(Equality equality) expression,
    required TResult Function(
            Comparison comparison, Star<Comparison> comparisons)
        equality,
    required TResult Function(Term term, Star<Term> terms) comparison,
    required TResult Function(Factor factor, Star<Factor> factors) term,
    required TResult Function(UnaryExp unary, Star<UnaryExp> unaries) factor,
    required TResult Function(Unary unary) unary,
    required TResult Function(Primary primary) primary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Exp value) expression,
    required TResult Function(Equality value) equality,
    required TResult Function(Comparison value) comparison,
    required TResult Function(Term value) term,
    required TResult Function(Factor value) factor,
    required TResult Function(UnaryExp value) unary,
    required TResult Function(PrimaryExp value) primary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
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
abstract class _$$ExpCopyWith<$Res> {
  factory _$$ExpCopyWith(_$Exp value, $Res Function(_$Exp) then) =
      __$$ExpCopyWithImpl<$Res>;
  $Res call({Equality equality});
}

/// @nodoc
class __$$ExpCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$ExpCopyWith<$Res> {
  __$$ExpCopyWithImpl(_$Exp _value, $Res Function(_$Exp) _then)
      : super(_value, (v) => _then(v as _$Exp));

  @override
  _$Exp get _value => super._value as _$Exp;

  @override
  $Res call({
    Object? equality = freezed,
  }) {
    return _then(_$Exp(
      equality == freezed
          ? _value.equality
          : equality // ignore: cast_nullable_to_non_nullable
              as Equality,
    ));
  }
}

/// @nodoc

class _$Exp implements Exp {
  const _$Exp(this.equality);

  @override
  final Equality equality;

  @override
  String toString() {
    return 'Expression.expression(equality: $equality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Exp &&
            const DeepCollectionEquality().equals(other.equality, equality));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(equality));

  @JsonKey(ignore: true)
  @override
  _$$ExpCopyWith<_$Exp> get copyWith =>
      __$$ExpCopyWithImpl<_$Exp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Equality equality) expression,
    required TResult Function(
            Comparison comparison, Star<Comparison> comparisons)
        equality,
    required TResult Function(Term term, Star<Term> terms) comparison,
    required TResult Function(Factor factor, Star<Factor> factors) term,
    required TResult Function(UnaryExp unary, Star<UnaryExp> unaries) factor,
    required TResult Function(Unary unary) unary,
    required TResult Function(Primary primary) primary,
  }) {
    return expression(this.equality);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
  }) {
    return expression?.call(this.equality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
    required TResult orElse(),
  }) {
    if (expression != null) {
      return expression(this.equality);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Exp value) expression,
    required TResult Function(Equality value) equality,
    required TResult Function(Comparison value) comparison,
    required TResult Function(Term value) term,
    required TResult Function(Factor value) factor,
    required TResult Function(UnaryExp value) unary,
    required TResult Function(PrimaryExp value) primary,
  }) {
    return expression(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
  }) {
    return expression?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
    required TResult orElse(),
  }) {
    if (expression != null) {
      return expression(this);
    }
    return orElse();
  }
}

abstract class Exp implements Expression {
  const factory Exp(final Equality equality) = _$Exp;

  Equality get equality;
  @JsonKey(ignore: true)
  _$$ExpCopyWith<_$Exp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EqualityCopyWith<$Res> {
  factory _$$EqualityCopyWith(
          _$Equality value, $Res Function(_$Equality) then) =
      __$$EqualityCopyWithImpl<$Res>;
  $Res call({Comparison comparison, Star<Comparison> comparisons});
}

/// @nodoc
class __$$EqualityCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$EqualityCopyWith<$Res> {
  __$$EqualityCopyWithImpl(_$Equality _value, $Res Function(_$Equality) _then)
      : super(_value, (v) => _then(v as _$Equality));

  @override
  _$Equality get _value => super._value as _$Equality;

  @override
  $Res call({
    Object? comparison = freezed,
    Object? comparisons = freezed,
  }) {
    return _then(_$Equality(
      comparison == freezed
          ? _value.comparison
          : comparison // ignore: cast_nullable_to_non_nullable
              as Comparison,
      comparisons == freezed
          ? _value.comparisons
          : comparisons // ignore: cast_nullable_to_non_nullable
              as Star<Comparison>,
    ));
  }
}

/// @nodoc

class _$Equality implements Equality {
  const _$Equality(this.comparison, [this.comparisons = const []]);

  @override
  final Comparison comparison;
  @override
  @JsonKey()
  final Star<Comparison> comparisons;

  @override
  String toString() {
    return 'Expression.equality(comparison: $comparison, comparisons: $comparisons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Equality &&
            const DeepCollectionEquality()
                .equals(other.comparison, comparison) &&
            const DeepCollectionEquality()
                .equals(other.comparisons, comparisons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(comparison),
      const DeepCollectionEquality().hash(comparisons));

  @JsonKey(ignore: true)
  @override
  _$$EqualityCopyWith<_$Equality> get copyWith =>
      __$$EqualityCopyWithImpl<_$Equality>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Equality equality) expression,
    required TResult Function(
            Comparison comparison, Star<Comparison> comparisons)
        equality,
    required TResult Function(Term term, Star<Term> terms) comparison,
    required TResult Function(Factor factor, Star<Factor> factors) term,
    required TResult Function(UnaryExp unary, Star<UnaryExp> unaries) factor,
    required TResult Function(Unary unary) unary,
    required TResult Function(Primary primary) primary,
  }) {
    return equality(this.comparison, comparisons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
  }) {
    return equality?.call(this.comparison, comparisons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
    required TResult orElse(),
  }) {
    if (equality != null) {
      return equality(this.comparison, comparisons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Exp value) expression,
    required TResult Function(Equality value) equality,
    required TResult Function(Comparison value) comparison,
    required TResult Function(Term value) term,
    required TResult Function(Factor value) factor,
    required TResult Function(UnaryExp value) unary,
    required TResult Function(PrimaryExp value) primary,
  }) {
    return equality(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
  }) {
    return equality?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
    required TResult orElse(),
  }) {
    if (equality != null) {
      return equality(this);
    }
    return orElse();
  }
}

abstract class Equality implements Expression {
  const factory Equality(final Comparison comparison,
      [final Star<Comparison> comparisons]) = _$Equality;

  Comparison get comparison;
  Star<Comparison> get comparisons;
  @JsonKey(ignore: true)
  _$$EqualityCopyWith<_$Equality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ComparisonCopyWith<$Res> {
  factory _$$ComparisonCopyWith(
          _$Comparison value, $Res Function(_$Comparison) then) =
      __$$ComparisonCopyWithImpl<$Res>;
  $Res call({Term term, Star<Term> terms});
}

/// @nodoc
class __$$ComparisonCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$ComparisonCopyWith<$Res> {
  __$$ComparisonCopyWithImpl(
      _$Comparison _value, $Res Function(_$Comparison) _then)
      : super(_value, (v) => _then(v as _$Comparison));

  @override
  _$Comparison get _value => super._value as _$Comparison;

  @override
  $Res call({
    Object? term = freezed,
    Object? terms = freezed,
  }) {
    return _then(_$Comparison(
      term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as Term,
      terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as Star<Term>,
    ));
  }
}

/// @nodoc

class _$Comparison implements Comparison {
  const _$Comparison(this.term, [this.terms = const []]);

  @override
  final Term term;
  @override
  @JsonKey()
  final Star<Term> terms;

  @override
  String toString() {
    return 'Expression.comparison(term: $term, terms: $terms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Comparison &&
            const DeepCollectionEquality().equals(other.term, term) &&
            const DeepCollectionEquality().equals(other.terms, terms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(term),
      const DeepCollectionEquality().hash(terms));

  @JsonKey(ignore: true)
  @override
  _$$ComparisonCopyWith<_$Comparison> get copyWith =>
      __$$ComparisonCopyWithImpl<_$Comparison>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Equality equality) expression,
    required TResult Function(
            Comparison comparison, Star<Comparison> comparisons)
        equality,
    required TResult Function(Term term, Star<Term> terms) comparison,
    required TResult Function(Factor factor, Star<Factor> factors) term,
    required TResult Function(UnaryExp unary, Star<UnaryExp> unaries) factor,
    required TResult Function(Unary unary) unary,
    required TResult Function(Primary primary) primary,
  }) {
    return comparison(this.term, terms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
  }) {
    return comparison?.call(this.term, terms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
    required TResult orElse(),
  }) {
    if (comparison != null) {
      return comparison(this.term, terms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Exp value) expression,
    required TResult Function(Equality value) equality,
    required TResult Function(Comparison value) comparison,
    required TResult Function(Term value) term,
    required TResult Function(Factor value) factor,
    required TResult Function(UnaryExp value) unary,
    required TResult Function(PrimaryExp value) primary,
  }) {
    return comparison(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
  }) {
    return comparison?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
    required TResult orElse(),
  }) {
    if (comparison != null) {
      return comparison(this);
    }
    return orElse();
  }
}

abstract class Comparison implements Expression {
  const factory Comparison(final Term term, [final Star<Term> terms]) =
      _$Comparison;

  Term get term;
  Star<Term> get terms;
  @JsonKey(ignore: true)
  _$$ComparisonCopyWith<_$Comparison> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TermCopyWith<$Res> {
  factory _$$TermCopyWith(_$Term value, $Res Function(_$Term) then) =
      __$$TermCopyWithImpl<$Res>;
  $Res call({Factor factor, Star<Factor> factors});
}

/// @nodoc
class __$$TermCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$TermCopyWith<$Res> {
  __$$TermCopyWithImpl(_$Term _value, $Res Function(_$Term) _then)
      : super(_value, (v) => _then(v as _$Term));

  @override
  _$Term get _value => super._value as _$Term;

  @override
  $Res call({
    Object? factor = freezed,
    Object? factors = freezed,
  }) {
    return _then(_$Term(
      factor == freezed
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as Factor,
      factors == freezed
          ? _value.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as Star<Factor>,
    ));
  }
}

/// @nodoc

class _$Term implements Term {
  const _$Term(this.factor, [this.factors = const []]);

  @override
  final Factor factor;
  @override
  @JsonKey()
  final Star<Factor> factors;

  @override
  String toString() {
    return 'Expression.term(factor: $factor, factors: $factors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Term &&
            const DeepCollectionEquality().equals(other.factor, factor) &&
            const DeepCollectionEquality().equals(other.factors, factors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(factor),
      const DeepCollectionEquality().hash(factors));

  @JsonKey(ignore: true)
  @override
  _$$TermCopyWith<_$Term> get copyWith =>
      __$$TermCopyWithImpl<_$Term>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Equality equality) expression,
    required TResult Function(
            Comparison comparison, Star<Comparison> comparisons)
        equality,
    required TResult Function(Term term, Star<Term> terms) comparison,
    required TResult Function(Factor factor, Star<Factor> factors) term,
    required TResult Function(UnaryExp unary, Star<UnaryExp> unaries) factor,
    required TResult Function(Unary unary) unary,
    required TResult Function(Primary primary) primary,
  }) {
    return term(this.factor, factors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
  }) {
    return term?.call(this.factor, factors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
    required TResult orElse(),
  }) {
    if (term != null) {
      return term(this.factor, factors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Exp value) expression,
    required TResult Function(Equality value) equality,
    required TResult Function(Comparison value) comparison,
    required TResult Function(Term value) term,
    required TResult Function(Factor value) factor,
    required TResult Function(UnaryExp value) unary,
    required TResult Function(PrimaryExp value) primary,
  }) {
    return term(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
  }) {
    return term?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
    required TResult orElse(),
  }) {
    if (term != null) {
      return term(this);
    }
    return orElse();
  }
}

abstract class Term implements Expression {
  const factory Term(final Factor factor, [final Star<Factor> factors]) =
      _$Term;

  Factor get factor;
  Star<Factor> get factors;
  @JsonKey(ignore: true)
  _$$TermCopyWith<_$Term> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FactorCopyWith<$Res> {
  factory _$$FactorCopyWith(_$Factor value, $Res Function(_$Factor) then) =
      __$$FactorCopyWithImpl<$Res>;
  $Res call({UnaryExp unary, Star<UnaryExp> unaries});
}

/// @nodoc
class __$$FactorCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$FactorCopyWith<$Res> {
  __$$FactorCopyWithImpl(_$Factor _value, $Res Function(_$Factor) _then)
      : super(_value, (v) => _then(v as _$Factor));

  @override
  _$Factor get _value => super._value as _$Factor;

  @override
  $Res call({
    Object? unary = freezed,
    Object? unaries = freezed,
  }) {
    return _then(_$Factor(
      unary == freezed
          ? _value.unary
          : unary // ignore: cast_nullable_to_non_nullable
              as UnaryExp,
      unaries == freezed
          ? _value.unaries
          : unaries // ignore: cast_nullable_to_non_nullable
              as Star<UnaryExp>,
    ));
  }
}

/// @nodoc

class _$Factor implements Factor {
  const _$Factor(this.unary, [this.unaries = const []]);

  @override
  final UnaryExp unary;
  @override
  @JsonKey()
  final Star<UnaryExp> unaries;

  @override
  String toString() {
    return 'Expression.factor(unary: $unary, unaries: $unaries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Factor &&
            const DeepCollectionEquality().equals(other.unary, unary) &&
            const DeepCollectionEquality().equals(other.unaries, unaries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(unary),
      const DeepCollectionEquality().hash(unaries));

  @JsonKey(ignore: true)
  @override
  _$$FactorCopyWith<_$Factor> get copyWith =>
      __$$FactorCopyWithImpl<_$Factor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Equality equality) expression,
    required TResult Function(
            Comparison comparison, Star<Comparison> comparisons)
        equality,
    required TResult Function(Term term, Star<Term> terms) comparison,
    required TResult Function(Factor factor, Star<Factor> factors) term,
    required TResult Function(UnaryExp unary, Star<UnaryExp> unaries) factor,
    required TResult Function(Unary unary) unary,
    required TResult Function(Primary primary) primary,
  }) {
    return factor(this.unary, unaries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
  }) {
    return factor?.call(this.unary, unaries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
    required TResult orElse(),
  }) {
    if (factor != null) {
      return factor(this.unary, unaries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Exp value) expression,
    required TResult Function(Equality value) equality,
    required TResult Function(Comparison value) comparison,
    required TResult Function(Term value) term,
    required TResult Function(Factor value) factor,
    required TResult Function(UnaryExp value) unary,
    required TResult Function(PrimaryExp value) primary,
  }) {
    return factor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
  }) {
    return factor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
    required TResult orElse(),
  }) {
    if (factor != null) {
      return factor(this);
    }
    return orElse();
  }
}

abstract class Factor implements Expression {
  const factory Factor(final UnaryExp unary, [final Star<UnaryExp> unaries]) =
      _$Factor;

  UnaryExp get unary;
  Star<UnaryExp> get unaries;
  @JsonKey(ignore: true)
  _$$FactorCopyWith<_$Factor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnaryExpCopyWith<$Res> {
  factory _$$UnaryExpCopyWith(
          _$UnaryExp value, $Res Function(_$UnaryExp) then) =
      __$$UnaryExpCopyWithImpl<$Res>;
  $Res call({Unary unary});

  $UnaryCopyWith<$Res> get unary;
}

/// @nodoc
class __$$UnaryExpCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$UnaryExpCopyWith<$Res> {
  __$$UnaryExpCopyWithImpl(_$UnaryExp _value, $Res Function(_$UnaryExp) _then)
      : super(_value, (v) => _then(v as _$UnaryExp));

  @override
  _$UnaryExp get _value => super._value as _$UnaryExp;

  @override
  $Res call({
    Object? unary = freezed,
  }) {
    return _then(_$UnaryExp(
      unary == freezed
          ? _value.unary
          : unary // ignore: cast_nullable_to_non_nullable
              as Unary,
    ));
  }

  @override
  $UnaryCopyWith<$Res> get unary {
    return $UnaryCopyWith<$Res>(_value.unary, (value) {
      return _then(_value.copyWith(unary: value));
    });
  }
}

/// @nodoc

class _$UnaryExp implements UnaryExp {
  const _$UnaryExp(this.unary);

  @override
  final Unary unary;

  @override
  String toString() {
    return 'Expression.unary(unary: $unary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnaryExp &&
            const DeepCollectionEquality().equals(other.unary, unary));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(unary));

  @JsonKey(ignore: true)
  @override
  _$$UnaryExpCopyWith<_$UnaryExp> get copyWith =>
      __$$UnaryExpCopyWithImpl<_$UnaryExp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Equality equality) expression,
    required TResult Function(
            Comparison comparison, Star<Comparison> comparisons)
        equality,
    required TResult Function(Term term, Star<Term> terms) comparison,
    required TResult Function(Factor factor, Star<Factor> factors) term,
    required TResult Function(UnaryExp unary, Star<UnaryExp> unaries) factor,
    required TResult Function(Unary unary) unary,
    required TResult Function(Primary primary) primary,
  }) {
    return unary(this.unary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
  }) {
    return unary?.call(this.unary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
    required TResult orElse(),
  }) {
    if (unary != null) {
      return unary(this.unary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Exp value) expression,
    required TResult Function(Equality value) equality,
    required TResult Function(Comparison value) comparison,
    required TResult Function(Term value) term,
    required TResult Function(Factor value) factor,
    required TResult Function(UnaryExp value) unary,
    required TResult Function(PrimaryExp value) primary,
  }) {
    return unary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
  }) {
    return unary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
    required TResult orElse(),
  }) {
    if (unary != null) {
      return unary(this);
    }
    return orElse();
  }
}

abstract class UnaryExp implements Expression {
  const factory UnaryExp(final Unary unary) = _$UnaryExp;

  Unary get unary;
  @JsonKey(ignore: true)
  _$$UnaryExpCopyWith<_$UnaryExp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PrimaryExpCopyWith<$Res> {
  factory _$$PrimaryExpCopyWith(
          _$PrimaryExp value, $Res Function(_$PrimaryExp) then) =
      __$$PrimaryExpCopyWithImpl<$Res>;
  $Res call({Primary primary});

  $PrimaryCopyWith<$Res> get primary;
}

/// @nodoc
class __$$PrimaryExpCopyWithImpl<$Res> extends _$ExpressionCopyWithImpl<$Res>
    implements _$$PrimaryExpCopyWith<$Res> {
  __$$PrimaryExpCopyWithImpl(
      _$PrimaryExp _value, $Res Function(_$PrimaryExp) _then)
      : super(_value, (v) => _then(v as _$PrimaryExp));

  @override
  _$PrimaryExp get _value => super._value as _$PrimaryExp;

  @override
  $Res call({
    Object? primary = freezed,
  }) {
    return _then(_$PrimaryExp(
      primary == freezed
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Primary,
    ));
  }

  @override
  $PrimaryCopyWith<$Res> get primary {
    return $PrimaryCopyWith<$Res>(_value.primary, (value) {
      return _then(_value.copyWith(primary: value));
    });
  }
}

/// @nodoc

class _$PrimaryExp implements PrimaryExp {
  const _$PrimaryExp(this.primary);

  @override
  final Primary primary;

  @override
  String toString() {
    return 'Expression.primary(primary: $primary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimaryExp &&
            const DeepCollectionEquality().equals(other.primary, primary));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(primary));

  @JsonKey(ignore: true)
  @override
  _$$PrimaryExpCopyWith<_$PrimaryExp> get copyWith =>
      __$$PrimaryExpCopyWithImpl<_$PrimaryExp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Equality equality) expression,
    required TResult Function(
            Comparison comparison, Star<Comparison> comparisons)
        equality,
    required TResult Function(Term term, Star<Term> terms) comparison,
    required TResult Function(Factor factor, Star<Factor> factors) term,
    required TResult Function(UnaryExp unary, Star<UnaryExp> unaries) factor,
    required TResult Function(Unary unary) unary,
    required TResult Function(Primary primary) primary,
  }) {
    return primary(this.primary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
  }) {
    return primary?.call(this.primary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Equality equality)? expression,
    TResult Function(Comparison comparison, Star<Comparison> comparisons)?
        equality,
    TResult Function(Term term, Star<Term> terms)? comparison,
    TResult Function(Factor factor, Star<Factor> factors)? term,
    TResult Function(UnaryExp unary, Star<UnaryExp> unaries)? factor,
    TResult Function(Unary unary)? unary,
    TResult Function(Primary primary)? primary,
    required TResult orElse(),
  }) {
    if (primary != null) {
      return primary(this.primary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Exp value) expression,
    required TResult Function(Equality value) equality,
    required TResult Function(Comparison value) comparison,
    required TResult Function(Term value) term,
    required TResult Function(Factor value) factor,
    required TResult Function(UnaryExp value) unary,
    required TResult Function(PrimaryExp value) primary,
  }) {
    return primary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
  }) {
    return primary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Exp value)? expression,
    TResult Function(Equality value)? equality,
    TResult Function(Comparison value)? comparison,
    TResult Function(Term value)? term,
    TResult Function(Factor value)? factor,
    TResult Function(UnaryExp value)? unary,
    TResult Function(PrimaryExp value)? primary,
    required TResult orElse(),
  }) {
    if (primary != null) {
      return primary(this);
    }
    return orElse();
  }
}

abstract class PrimaryExp implements Expression {
  const factory PrimaryExp(final Primary primary) = _$PrimaryExp;

  Primary get primary;
  @JsonKey(ignore: true)
  _$$PrimaryExpCopyWith<_$PrimaryExp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Unary {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenType tokenType, Unary unary) base,
    required TResult Function(Primary primary) primary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TokenType tokenType, Unary unary)? base,
    TResult Function(Primary primary)? primary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenType tokenType, Unary unary)? base,
    TResult Function(Primary primary)? primary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnaryValue value) base,
    required TResult Function(PrimaryValue value) primary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnaryValue value)? base,
    TResult Function(PrimaryValue value)? primary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnaryValue value)? base,
    TResult Function(PrimaryValue value)? primary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnaryCopyWith<$Res> {
  factory $UnaryCopyWith(Unary value, $Res Function(Unary) then) =
      _$UnaryCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnaryCopyWithImpl<$Res> implements $UnaryCopyWith<$Res> {
  _$UnaryCopyWithImpl(this._value, this._then);

  final Unary _value;
  // ignore: unused_field
  final $Res Function(Unary) _then;
}

/// @nodoc
abstract class _$$UnaryValueCopyWith<$Res> {
  factory _$$UnaryValueCopyWith(
          _$UnaryValue value, $Res Function(_$UnaryValue) then) =
      __$$UnaryValueCopyWithImpl<$Res>;
  $Res call({TokenType tokenType, Unary unary});

  $UnaryCopyWith<$Res> get unary;
}

/// @nodoc
class __$$UnaryValueCopyWithImpl<$Res> extends _$UnaryCopyWithImpl<$Res>
    implements _$$UnaryValueCopyWith<$Res> {
  __$$UnaryValueCopyWithImpl(
      _$UnaryValue _value, $Res Function(_$UnaryValue) _then)
      : super(_value, (v) => _then(v as _$UnaryValue));

  @override
  _$UnaryValue get _value => super._value as _$UnaryValue;

  @override
  $Res call({
    Object? tokenType = freezed,
    Object? unary = freezed,
  }) {
    return _then(_$UnaryValue(
      tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as TokenType,
      unary == freezed
          ? _value.unary
          : unary // ignore: cast_nullable_to_non_nullable
              as Unary,
    ));
  }

  @override
  $UnaryCopyWith<$Res> get unary {
    return $UnaryCopyWith<$Res>(_value.unary, (value) {
      return _then(_value.copyWith(unary: value));
    });
  }
}

/// @nodoc

class _$UnaryValue implements UnaryValue {
  const _$UnaryValue(this.tokenType, this.unary);

  @override
  final TokenType tokenType;
  @override
  final Unary unary;

  @override
  String toString() {
    return 'Unary.base(tokenType: $tokenType, unary: $unary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnaryValue &&
            const DeepCollectionEquality().equals(other.tokenType, tokenType) &&
            const DeepCollectionEquality().equals(other.unary, unary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tokenType),
      const DeepCollectionEquality().hash(unary));

  @JsonKey(ignore: true)
  @override
  _$$UnaryValueCopyWith<_$UnaryValue> get copyWith =>
      __$$UnaryValueCopyWithImpl<_$UnaryValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenType tokenType, Unary unary) base,
    required TResult Function(Primary primary) primary,
  }) {
    return base(tokenType, unary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TokenType tokenType, Unary unary)? base,
    TResult Function(Primary primary)? primary,
  }) {
    return base?.call(tokenType, unary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenType tokenType, Unary unary)? base,
    TResult Function(Primary primary)? primary,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(tokenType, unary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnaryValue value) base,
    required TResult Function(PrimaryValue value) primary,
  }) {
    return base(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnaryValue value)? base,
    TResult Function(PrimaryValue value)? primary,
  }) {
    return base?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnaryValue value)? base,
    TResult Function(PrimaryValue value)? primary,
    required TResult orElse(),
  }) {
    if (base != null) {
      return base(this);
    }
    return orElse();
  }
}

abstract class UnaryValue implements Unary {
  const factory UnaryValue(final TokenType tokenType, final Unary unary) =
      _$UnaryValue;

  TokenType get tokenType;
  Unary get unary;
  @JsonKey(ignore: true)
  _$$UnaryValueCopyWith<_$UnaryValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PrimaryValueCopyWith<$Res> {
  factory _$$PrimaryValueCopyWith(
          _$PrimaryValue value, $Res Function(_$PrimaryValue) then) =
      __$$PrimaryValueCopyWithImpl<$Res>;
  $Res call({Primary primary});

  $PrimaryCopyWith<$Res> get primary;
}

/// @nodoc
class __$$PrimaryValueCopyWithImpl<$Res> extends _$UnaryCopyWithImpl<$Res>
    implements _$$PrimaryValueCopyWith<$Res> {
  __$$PrimaryValueCopyWithImpl(
      _$PrimaryValue _value, $Res Function(_$PrimaryValue) _then)
      : super(_value, (v) => _then(v as _$PrimaryValue));

  @override
  _$PrimaryValue get _value => super._value as _$PrimaryValue;

  @override
  $Res call({
    Object? primary = freezed,
  }) {
    return _then(_$PrimaryValue(
      primary == freezed
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Primary,
    ));
  }

  @override
  $PrimaryCopyWith<$Res> get primary {
    return $PrimaryCopyWith<$Res>(_value.primary, (value) {
      return _then(_value.copyWith(primary: value));
    });
  }
}

/// @nodoc

class _$PrimaryValue implements PrimaryValue {
  const _$PrimaryValue(this.primary);

  @override
  final Primary primary;

  @override
  String toString() {
    return 'Unary.primary(primary: $primary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimaryValue &&
            const DeepCollectionEquality().equals(other.primary, primary));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(primary));

  @JsonKey(ignore: true)
  @override
  _$$PrimaryValueCopyWith<_$PrimaryValue> get copyWith =>
      __$$PrimaryValueCopyWithImpl<_$PrimaryValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TokenType tokenType, Unary unary) base,
    required TResult Function(Primary primary) primary,
  }) {
    return primary(this.primary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TokenType tokenType, Unary unary)? base,
    TResult Function(Primary primary)? primary,
  }) {
    return primary?.call(this.primary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TokenType tokenType, Unary unary)? base,
    TResult Function(Primary primary)? primary,
    required TResult orElse(),
  }) {
    if (primary != null) {
      return primary(this.primary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnaryValue value) base,
    required TResult Function(PrimaryValue value) primary,
  }) {
    return primary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnaryValue value)? base,
    TResult Function(PrimaryValue value)? primary,
  }) {
    return primary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnaryValue value)? base,
    TResult Function(PrimaryValue value)? primary,
    required TResult orElse(),
  }) {
    if (primary != null) {
      return primary(this);
    }
    return orElse();
  }
}

abstract class PrimaryValue implements Unary {
  const factory PrimaryValue(final Primary primary) = _$PrimaryValue;

  Primary get primary;
  @JsonKey(ignore: true)
  _$$PrimaryValueCopyWith<_$PrimaryValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Primary {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num number) number,
    required TResult Function(String string) string,
    required TResult Function(bool boolean) boolean,
    required TResult Function() nil,
    required TResult Function(Expression expression) grouping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(num number)? number,
    TResult Function(String string)? string,
    TResult Function(bool boolean)? boolean,
    TResult Function()? nil,
    TResult Function(Expression expression)? grouping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(Number value) number,
    required TResult Function(StringP value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(StringP value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(StringP value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryCopyWith<$Res> {
  factory $PrimaryCopyWith(Primary value, $Res Function(Primary) then) =
      _$PrimaryCopyWithImpl<$Res>;
}

/// @nodoc
class _$PrimaryCopyWithImpl<$Res> implements $PrimaryCopyWith<$Res> {
  _$PrimaryCopyWithImpl(this._value, this._then);

  final Primary _value;
  // ignore: unused_field
  final $Res Function(Primary) _then;
}

/// @nodoc
abstract class _$$NumberCopyWith<$Res> {
  factory _$$NumberCopyWith(_$Number value, $Res Function(_$Number) then) =
      __$$NumberCopyWithImpl<$Res>;
  $Res call({num number});
}

/// @nodoc
class __$$NumberCopyWithImpl<$Res> extends _$PrimaryCopyWithImpl<$Res>
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
    return 'Primary.number(number: $number)';
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
    required TResult Function(Number value) number,
    required TResult Function(StringP value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) {
    return number(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(StringP value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) {
    return number?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(StringP value)? string,
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

abstract class Number implements Primary {
  const factory Number(final num number) = _$Number;

  num get number;
  @JsonKey(ignore: true)
  _$$NumberCopyWith<_$Number> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StringPCopyWith<$Res> {
  factory _$$StringPCopyWith(_$StringP value, $Res Function(_$StringP) then) =
      __$$StringPCopyWithImpl<$Res>;
  $Res call({String string});
}

/// @nodoc
class __$$StringPCopyWithImpl<$Res> extends _$PrimaryCopyWithImpl<$Res>
    implements _$$StringPCopyWith<$Res> {
  __$$StringPCopyWithImpl(_$StringP _value, $Res Function(_$StringP) _then)
      : super(_value, (v) => _then(v as _$StringP));

  @override
  _$StringP get _value => super._value as _$StringP;

  @override
  $Res call({
    Object? string = freezed,
  }) {
    return _then(_$StringP(
      string == freezed
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StringP implements StringP {
  const _$StringP(this.string);

  @override
  final String string;

  @override
  String toString() {
    return 'Primary.string(string: $string)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringP &&
            const DeepCollectionEquality().equals(other.string, string));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(string));

  @JsonKey(ignore: true)
  @override
  _$$StringPCopyWith<_$StringP> get copyWith =>
      __$$StringPCopyWithImpl<_$StringP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
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
    required TResult Function(Number value) number,
    required TResult Function(StringP value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(StringP value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(StringP value)? string,
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

abstract class StringP implements Primary {
  const factory StringP(final String string) = _$StringP;

  String get string;
  @JsonKey(ignore: true)
  _$$StringPCopyWith<_$StringP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoolCopyWith<$Res> {
  factory _$$BoolCopyWith(_$Bool value, $Res Function(_$Bool) then) =
      __$$BoolCopyWithImpl<$Res>;
  $Res call({bool boolean});
}

/// @nodoc
class __$$BoolCopyWithImpl<$Res> extends _$PrimaryCopyWithImpl<$Res>
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
    return 'Primary.boolean(boolean: $boolean)';
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
    required TResult Function(Number value) number,
    required TResult Function(StringP value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(StringP value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(StringP value)? string,
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

abstract class Bool implements Primary {
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
class __$$NilCopyWithImpl<$Res> extends _$PrimaryCopyWithImpl<$Res>
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
    return 'Primary.nil()';
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
    required TResult Function(Number value) number,
    required TResult Function(StringP value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) {
    return nil(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(StringP value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) {
    return nil?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(StringP value)? string,
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

abstract class Nil implements Primary {
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
class __$$GroupingCopyWithImpl<$Res> extends _$PrimaryCopyWithImpl<$Res>
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
    return 'Primary.grouping(expression: $expression)';
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
    required TResult Function(Number value) number,
    required TResult Function(StringP value) string,
    required TResult Function(Bool value) boolean,
    required TResult Function(Nil value) nil,
    required TResult Function(Grouping value) grouping,
  }) {
    return grouping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(StringP value)? string,
    TResult Function(Bool value)? boolean,
    TResult Function(Nil value)? nil,
    TResult Function(Grouping value)? grouping,
  }) {
    return grouping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Number value)? number,
    TResult Function(StringP value)? string,
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

abstract class Grouping implements Primary {
  const factory Grouping(final Expression expression) = _$Grouping;

  Expression get expression;
  @JsonKey(ignore: true)
  _$$GroupingCopyWith<_$Grouping> get copyWith =>
      throw _privateConstructorUsedError;
}
