import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlox/base.dart';
import 'package:tuple/tuple.dart';

import 'statement.dart';
import 'token.dart';
import 'token_type.dart';

part 'expression.freezed.dart';

typedef Star<T extends Expression> = Iterable<Tuple2<TT, T>>;

@freezed
class Calling with _$Calling {
  const factory Calling.dot({required Token identifier}) = Dot;
  const factory Calling.paren({required List<Expression> arguments}) = Paren;
}

@freezed
class Expression with _$Expression {
  const factory Expression.ternary(
      {required Expression predicate,
      required Expression yes,
      required Expression no}) = Ternary;
  const factory Expression.binary(
      {required Token token,
      required Expression left,
      required Expression right}) = Binary;
  const factory Expression.unary({
    required Token token,
    required Expression expression,
  }) = Unary;
  const factory Expression.variable({required Token token}) = Identifier;
  const factory Expression.literal(value) = Literal;
  const factory Expression.invocation({
    required Expression callee,
    required Calling calling,
  }) = Invocation;
  const factory Expression.grouping(Expression expression) = Grouping;
  const factory Expression.assignment(
      {required Token token, required Expression expression}) = Assignment;
  const factory Expression.setter(
      {required Expression callee,
      required Token identifier,
      required Expression right}) = Setter;
  const factory Expression.function({
    required bool isInitializer,
    required Token typeToken,
    required Token nameToken,
    required List<Token> parameters,
    required Statement body,
  }) = FunctionExpression;
}

extension on Iterable {
  String get paren => '($unwords)';
}

extension ExpressionString on Expression {
  String get pretty => when(
        setter: (callee, identifier, right) => [
          [callee.pretty, identifier.lexeme].join("."),
          '=',
          right.pretty
        ].unwords,
        function: (i, _, __, ___, ____) =>
            (this as FunctionExpression).prettify(),
        invocation: (callee, calling) {
          return [
            callee.pretty,
            calling.when(
              dot: (id) => '.${id.lexeme}',
              paren: (arguments) =>
                  [arguments.map((e) => e.pretty).join(',')].paren,
            )
          ].join();
        },
        assignment: (token, expression) =>
            [token.pretty, '=', expression.pretty].unwords,
        variable: (token) => token.lexeme,
        ternary: (predicate, yes, no) => [
          predicate.pretty,
          TT.QUESTION_MARK.string,
          yes.pretty,
          TT.COLON.string,
          no.pretty
        ].paren,
        binary: (token, left, right) =>
            [token.pretty, left.pretty, right.pretty].paren,
        grouping: (expression) => ['group', expression.pretty].paren,
        literal: (value) => value is String
            ? '"$value"'
            : value == null
                ? 'nil'
                : value.toString(),
        unary: (token, expression) => [token.pretty, expression.pretty].paren,
      );

  List<String> get rpn => maybeWhen(
        ternary: (predicate, yes, no) =>
            [predicate, yes, no].expand((e) => e.rpn).list,
        binary: (token, left, right) =>
            [...left.rpn, ...right.rpn, token.pretty],
        grouping: (expression) => expression.rpn,
        unary: (token, expression) => [...expression.rpn, token.pretty],
        orElse: () => [pretty],
      );
}

extension NumExt on Object? {
  Expression get literal => Expression.literal(this);
}

extension ExpExt on Expression {
  Expression get grouping => Expression.grouping(this);
}

extension TTExt on Token {
  Expression unary(Expression expression) =>
      Expression.unary(expression: expression, token: this);
  Expression binary(Expression left, Expression right) =>
      Expression.binary(left: left, right: right, token: this);
}

extension TokenExpressionExtension on Token {
  Expression? get expression => {
        TT.NUMBER: () => Expression.literal(this.literal),
        TT.STRING: () => Expression.literal(this.literal),
        TT.NIL: () => Expression.literal(null),
        TT.TRUE: () => Expression.literal(true),
        TT.FALSE: () => Expression.literal(false),
        TT.IDENTIFIER: () => Expression.variable(token: this),
      }[tokenType]
          ?.call();
}

extension on Token {
  String get pretty =>
      tokenType.maybeString ?? this.literal?.toString() ?? tokenType.name;
}

extension FunctionExpressionExt on FunctionExpression {
  String prettify([String name = ""]) => [
        if (!isMethod) "fun ",
        if (!isAnonymous) name,
        '(',
        parameters.map((e) => e.pretty).join(', '),
        ') ',
        body.pretty
      ].join();
  bool get isMethod => typeToken.tokenType == TT.CLASS;
  bool get isAnonymous => nameToken.tokenType != TT.IDENTIFIER;
}

final nullExpression = 'null'.identifier.expression!;
final pairExpression = 'pair'.identifier.expression!;

extension IdentifierString on String {
  Token get identifier => Token(
        literal: this,
        lexeme: this,
        line: -1,
        position: -1,
        tokenType: TT.IDENTIFIER,
      );
}
