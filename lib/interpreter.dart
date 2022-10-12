import 'package:jlox/environment.dart';
import 'package:jlox/expression.dart';
import 'package:jlox/statement.dart';
import 'package:jlox/token.dart';
import 'package:jlox/token_type.dart';

import 'base.dart';

class Interpreter {
  final envs = [Environment()];
  Environment get env => envs.last;
  bool _broken = false;
  bool _returned = false;
  Object? interpret(Program program) {
    Object? value;
    for (final statement in program) {
      if (_broken || _returned) {
        return value;
      }
      value = interpretStatement(statement);
    }
    return value;
  }

  Object? interpretStatement(Statement statement) => statement.when(
        returnStatement: (_, returnValue) =>
            exp(returnValue).and(() => _returned = true),
        function: (functionName, parameters, body) {
          final forked = env.clone;
          env.declare(
            functionName.literal,
            (List arguments) => scoped(() {
              parameters.zip(arguments).forEach((element) =>
                  env.declare(element.item1.literal, element.item2));
              return interpretStatement(body).and(() => _returned = false);
            }, forked),
          );
          return null;
        },
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
        invocation: (callee, arguments) {
          var value = exp(callee);
          for (final argument in arguments) {
            value = (value as dynamic)(argument.map(exp).list);
          }
          return value;
        },
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

  Object? scoped(Object? Function() callback, [Environment? forked]) {
    envs.add(forked ?? env);
    env.push;
    final value = callback();
    env.pop;
    envs.removeLast();
    return value;
  }

  Object? scopedStatement(Statement statement) =>
      scoped(() => interpret([statement]));

  bool shouldEvaluate(Object? _) => !_broken;
}

extension on Statement {
  Statement blocked(Statement? other, bool front) => other == null
      ? this
      : Statement.block(
          brace: Token(
              lexeme: "{", literal: null, line: 0, tokenType: TT.LEFT_BRACE),
          blocks: front ? [this, other] : [other, this]);
}
