import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlox/base.dart';
import 'package:tuple/tuple.dart';

import 'token.dart';
import 'token_type.dart';

part 'expression.freezed.dart';

typedef Star<T extends Expression> = Iterable<Tuple2<TT, T>>;

@freezed
class Expression with _$Expression {
  const factory Expression.ternary(
      {required Expression predicate,
      required Expression yes,
      required Expression no}) = Ternary;
  const factory Expression.binary(
      {required TokenType tokenType,
      required Expression left,
      required Expression right}) = Binary;
  const factory Expression.unary({
    required TokenType tokenType,
    required Expression expression,
  }) = Unary;
  const factory Expression.literal(value) = Literal;
  const factory Expression.grouping(Expression expression) = Grouping;
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
        ternary: (predicate, yes, no) => [
          predicate.pretty,
          TT.QUESTION_MARK.string,
          yes.pretty,
          TT.COLON.string,
          no.pretty
        ].paren,
        binary: (tokenType, left, right) =>
            [tokenType.string, left.pretty, right.pretty].paren,
        grouping: (expression) => ['group', expression.pretty].paren,
        literal: (value) => value is String
            ? '"$value"'
            : value == null
                ? 'nil'
                : value.toString(),
        unary: (tokenType, expression) =>
            [tokenType.string, expression.pretty].paren,
      );

  List<String> get rpn => maybeWhen(
        ternary: (predicate, yes, no) =>
            [predicate, yes, no].expand((element) => element.rpn).list,
        binary: (tokenType, left, right) =>
            [...left.rpn, ...right.rpn, tokenType.string],
        grouping: (expression) => expression.rpn,
        unary: (tokenType, expression) => [...expression.rpn, tokenType.string],
        orElse: () => [pretty],
      );
}

extension NumExt on num {
  Expression get expression => Expression.literal(this);
  Expression get neg => TT.MINUS.unary(expression);
  Expression plus(Expression other) => expression.plus(other);
  Expression times(Expression other) => expression.times(other);
  Expression minus(Expression other) => expression.minus(other);
}

extension TTExt on TT {
  Expression unary(Expression expression) =>
      Expression.unary(expression: expression, tokenType: this);
  Expression binary(Expression left, Expression right) =>
      Expression.binary(left: left, right: right, tokenType: this);
}

extension ExpressionExt on Expression {
  Expression get grouping => Expression.grouping(this);
  Expression times(Expression other) => TT.STAR.binary(this, other);
  Expression plus(Expression other) => TT.PLUS.binary(this, other);
  Expression minus(Expression other) => TT.MINUS.binary(this, other);
}

extension StrExt on String {
  Expression get expression => Expression.literal(this);
}

extension BoolExt on bool {
  Expression get expression => Expression.literal(this);
}

extension TokenExpressionExtension on Token {
  Expression? get expression => {
        TT.NUMBER: () => Expression.literal(this.literal),
        TT.STRING: () => Expression.literal(this.literal),
        TT.NIL: () => Expression.literal(null),
        TT.TRUE: () => Expression.literal(true),
        TT.FALSE: () => Expression.literal(false),
      }[tokenType]
          ?.call();
}
