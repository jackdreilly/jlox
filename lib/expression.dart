import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlox/base.dart';
import 'package:tuple/tuple.dart';

import 'token_type.dart';

part 'expression.freezed.dart';

typedef Star<T extends Expression> = Iterable<Tuple2<TT, T>>;

@freezed
class Expression with _$Expression {
  const factory Expression.expression(Equality equality) = Exp;
  const factory Expression.equality(Comparison comparison,
      [@Default([]) Star<Comparison> comparisons]) = Equality;
  const factory Expression.comparison(Term term,
      [@Default([]) Star<Term> terms]) = Comparison;
  const factory Expression.term(Factor factor,
      [@Default([]) Star<Factor> factors]) = Term;
  const factory Expression.factor(UnaryExp unary,
      [@Default([]) Star<UnaryExp> unaries]) = Factor;
  const factory Expression.unary(Unary unary) = UnaryExp;
  const factory Expression.primary(Primary primary) = PrimaryExp;
}

@freezed
class Unary with _$Unary {
  const factory Unary.base(TT tokenType, Unary unary) = UnaryValue;
  const factory Unary.primary(Primary primary) = PrimaryValue;
}

@freezed
class Primary with _$Primary {
  const factory Primary.number(num number) = Number;
  const factory Primary.string(String string) = StringP;
  const factory Primary.boolean(bool boolean) = Bool;
  const factory Primary.nil() = Nil;
  const factory Primary.grouping(Expression expression) = Grouping;
}

extension on Iterable {
  String get paren => '($unwords)';
}

String expand(Expression e, Star<Expression> es) => es.isEmpty
    ? e.pretty
    : [
        es.last.item1.string,
        expand(e, es.take(es.length - 1)),
        es.last.item2.pretty,
      ].paren;

extension ExpressionString on Expression {
  String get pretty => when(
      expression: (equality) => equality.pretty,
      equality: expand,
      comparison: expand,
      term: expand,
      factor: expand,
      unary: (unary) => unary.pretty,
      primary: (primary) => primary.pretty);

  List<String> get rpn => when(
      expression: (equality) => equality.rpn,
      equality: rpnify,
      comparison: rpnify,
      term: rpnify,
      factor: rpnify,
      unary: (unary) => unary.rpn,
      primary: (primary) => primary.rpn);
}

extension UnaryPretty on Unary {
  String get pretty => when(
      base: (tokenType, unary) => [tokenType.string, unary.pretty].paren,
      primary: (primary) => primary.pretty);
  List<String> get rpn => when(
        base: (tokenType, unary) => [...unary.rpn, tokenType.string],
        primary: (primary) => primary.rpn,
      );
}

extension PrimaryPretty on Primary {
  List<String> get rpn => maybeWhen(
        grouping: (expression) => expression.rpn,
        orElse: () => [pretty],
      );
  String get pretty => when(
      number: (number) => number.toString(),
      string: (string) => string.quote,
      boolean: (boolean) => boolean.toString(),
      nil: () => 'nil',
      grouping: (expression) => '(group ${expression.pretty})');
}

extension on String {
  String get quote => '"$this"';
}

extension EEE on Expression {
  Unary get unary => grouping.unary;
  Grouping get grouping => Grouping(this);
  Term get term => factor.term;
  Factor get factor => unary.factor;
}

extension EqualityExt on Equality {
  Expression get expression => Expression.expression(this);
}

extension FactorExt on Factor {
  Term get term => Term(this);
}

extension ComparisonExt on Comparison {
  Equality get equality => Equality(this);
}

extension TermExt on Term {
  Factor times(Term other) => TT.STAR.factor(unary, other.unary);
  Comparison get comparison => Comparison(this);
  Equality get equality => comparison.equality;
  Expression get expression => equality.expression;
}

extension NumExt on num {
  Number get primary => Number(this);
  Unary get neg => primary.neg;
  Term plus(num other) => TT.PLUS.term(factor, other.factor);
  Term minus(num other) => TT.MINUS.term(factor, other.factor);
  Factor get factor => primary.factor;
  Grouping get grouping => primary.exp.grouping;
  Term get term => primary.term;
  Expression get expression => equality.expression;
  Equality get equality => term.equality;
}

extension OpTT on TT {
  Factor factor(Unary a, Unary b) => Factor(a.exp, [tupe(b.exp)]);
  Term term(Factor a, Factor b) => Term(a, [tupe(b)]);
}

extension UnaryExt on Unary {
  UnaryExp get exp => UnaryExp(this);
  Factor times(Term other) => TT.STAR.factor(this, other.unary);
  Factor get factor => Factor(exp);
}

extension PExt on Primary {
  Unary get neg => Unary.base(TT.MINUS, unary);
  Unary get unary => Unary.primary(this);
  Factor get factor => Factor(unary.exp);
  PrimaryExp get exp => PrimaryExp(this);
  Term get term => factor.term;
}

extension StrExt on String {
  PrimaryExp get primary => Primary.string(this).exp;
}

extension BoolExt on bool {
  Primary get primary => Primary.boolean(this);
}

List<String> rpnify(Expression comparison, Star<Expression> comparisons) =>
    [...comparison.rpn, ...comparisons.expand((element) => element.rpn)];

extension on Tuple2<TT, Expression> {
  List<String> get rpn => [...item2.rpn, item1.string];
}
