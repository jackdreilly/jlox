import 'package:jlox/environment.dart';
import 'package:jlox/expression.dart';
import 'package:jlox/statement.dart';
import 'package:jlox/token.dart';
import 'package:jlox/token_type.dart';

import 'base.dart';

extension on Iterable {
  get lastOrNull => isEmpty ? null : last;
}

class Interpreter {
  final env = Environment();
  Object? interpret(Program program) => program
      .map(interpretStatement)
      .takeWhile((value) => !_broken)
      .list
      .lastOrNull;
  bool _broken = false;

  Object? interpretStatement(Statement statement) => statement.when(
        breakStatement: (token) => _broken = true,
        forLoop: (initializer, predicate, perLoop, body) => interpretStatement(
            Statement.whileLoop(
                    predicate: predicate ?? true.literal,
                    body: body.blocked(perLoop?.statement, true))
                .blocked(initializer, false)),
        whileLoop: (predicate, body) {
          while (exp(predicate).truth) {
            scopedStatement(body);
            if (_broken) {
              _broken = false;
              break;
            }
          }
          return null;
        },
        justIf: (predicate, yes) =>
            exp(predicate) as bool ? scopedStatement(yes) : null,
        ifElse: (predicate, yes, no) =>
            exp(predicate) as bool ? scopedStatement(yes) : scopedStatement(no),
        block: (token, blocks) => scoped(() => interpret(blocks)),
        expression: exp,
        print: (expression) {
          print(exp(expression));
          return null;
        },
        uninitialized: (variable) {
          env.define(variable.literal);
          return null;
        },
        declaration: (variable, expression) {
          env.declare(variable.literal, exp(expression));
          return null;
        },
      );

  Object? exp(Expression? expression) => expression?.when(
        assignment: (token, expression) =>
            env.assign(token.literal, exp(expression)),
        binary: (token, left, right) => token.tokenType.isShortCircuit
            ? token.op(() => exp(left), () => exp(right))
            : token.op(exp(left), exp(right)),
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

  Object? scopedStatement(Statement statement) =>
      scoped(() => interpret([statement]));
}

extension on Statement {
  Statement blocked(Statement? other, bool front) => other == null
      ? this
      : Statement.block(
          brace: Token(
              lexeme: "{", literal: null, line: 0, tokenType: TT.LEFT_BRACE),
          blocks: front ? [this, other] : [other, this]);
}
