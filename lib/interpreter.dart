import 'package:jlox/environment.dart';
import 'package:jlox/expression.dart';
import 'package:jlox/statement.dart';
import 'package:jlox/token.dart';

import 'base.dart';

class Interpreter {
  final env = Environment();
  Object? interpret(Program program) => program.isEmpty
      ? null
      : program
          .map((e) => e.when(
                block: (token, blocks) => interpret(blocks),
                expression: exp,
                print: (expression) {
                  print(exp(expression));
                  return null;
                },
                declaration: assign,
              ))
          .list
          .last;

  Object? exp(Expression expression) => expression.when(
        assignment: (token, expression) => assign(token, expression, true),
        binary: (token, left, right) => token.op(exp(left), exp(right)),
        grouping: exp,
        variable: (token) => env[token.literal],
        literal: id,
        ternary: (predicate, yes, no) =>
            exp(predicate) as bool ? exp(yes) : exp(no),
        unary: (token, expression) => token.op(exp(expression)),
      );

  Object? assign(Token variable, Expression expression,
      [bool isAssignment = false]) {
    if (isAssignment) {
      env[variable.literal];
    }
    final value = exp(expression);
    env[variable.literal] = value;
    return isAssignment ? value : null;
  }
}
