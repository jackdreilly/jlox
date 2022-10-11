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
                block: (token, blocks) => scoped(() => interpret(blocks)),
                expression: exp,
                print: (expression) {
                  print(exp(expression));
                  return null;
                },
                declaration: (variable, expression, initialized) {
                  env.declare(variable.literal,
                      expression == null ? null : exp(expression));
                  return null;
                },
              ))
          .list
          .last;

  Object? exp(Expression expression) => expression.when(
        assignment: (token, expression) =>
            env.assign(token.literal, exp(expression)),
        binary: (token, left, right) => token.op(exp(left), exp(right)),
        grouping: exp,
        variable: (token) => env.get(token.literal),
        literal: id,
        ternary: (predicate, yes, no) =>
            exp(predicate) as bool ? exp(yes) : exp(no),
        unary: (token, expression) => token.op(exp(expression)),
      );

  Object? scoped(Object? Function() callback) {
    env.push;
    final value = callback();
    env.pop;
    return value;
  }
}
