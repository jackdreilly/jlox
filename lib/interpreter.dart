import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlox/statement.dart';

import 'base.dart';
import 'expression.dart';
import 'parser.dart';
import 'token.dart';
import 'token_type.dart';

part 'interpreter.freezed.dart';

typedef State = Map<String, dynamic>;

extension StringInterpreterExtension on String {
  State get interpret => parse.interpret;
}

extension on Program {
  State get interpret => fold(
      {},
      (previousValue, element) =>
          {...previousValue, ...previousValue.interpret(element)});
}

extension on State {
  State interpret(Statement statement) =>
      StatementState(statement: statement, state: this).interpret;
}

extension on StatementState {
  State get interpret => statement.when(
        assignment: (variable, expression) =>
            {variable.literal: exp(expression)},
        expression: (expression) {
          exp(expression);
          return {};
        },
        print: (expression) {
          print(exp(expression));
          return {};
        },
      );
  Object? exp(Expression expression) => expState(expression).interpret;
  ExpressionState expState(Expression expression) =>
      ExpressionState(expression: expression, state: state);
}

@freezed
class ExpressionState with _$ExpressionState {
  const factory ExpressionState(
      {required Expression expression,
      required State state}) = ExpressionStateFactory;
}

@freezed
class StatementState with _$StatementState {
  const factory StatementState(
      {required Statement statement,
      required State state}) = StatementStateFactory;
}

extension on ExpressionState {
  Object? get interpret => expression.when(
        identifier: (token) => state[token.lexeme],
        ternary: (predicate, yes, no) =>
            exp(predicate).truth ? exp(yes) : exp(no),
        binary: (token, left, right) => token.op(exp(left), exp(right)),
        unary: (token, expression) => token.op(exp(expression)),
        literal: id,
        grouping: exp,
      );
  Object? exp(Expression expression) =>
      copyWith(expression: expression).interpret;
}
