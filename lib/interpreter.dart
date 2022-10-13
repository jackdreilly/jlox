import 'package:jlox/environment.dart';
import 'package:jlox/expression.dart';
import 'package:jlox/lox_function.dart';
import 'package:jlox/statement.dart';
import 'package:jlox/token.dart';
import 'package:jlox/token_type.dart';

import 'base.dart';
import 'exiter.dart';

class Interpreter {
  final envs = [Environment()];
  Environment get env => envs.last;
  Object? interpret(Program program) =>
      program.isEmpty ? null : program.map(interpretStatement).list.last;
  T exiting<T>(Callback<T> callback) {
    try {
      return callback();
    } on Exiter catch (e) {
      e.tag('exited');
      env.debug;
      return e.value;
    }
  }

  Object? interpretStatement(Statement statement) => statement.when(
        returnStatement: (token, returnValue) =>
            throw Exiter.returned(value: exp(returnValue), token: token),
        function: (functionName, parameters, body) {
          final forked = env.clone(functionName.lexeme);
          env.declare(
            functionName.literal,
            ((List arguments) => scoped(() {
                  parameters.zip(arguments).forEach((element) =>
                      env.declare(element.item1.literal, element.item2));
                  ['CALLING', functionName.lexeme, functionName.line]
                      .unwords
                      .log;
                  env.debug;
                  return exiting(() => interpretStatement(body));
                }, forked)).loxFunction(functionName),
          );
          return null;
        },
        breakStatement: (token) => throw Exiter.broke(token: token),
        forLoop: (initializer, predicate, perLoop, body) => interpretStatement(
            Statement.whileLoop(
                    predicate: predicate ?? true.literal,
                    body: body.blocked(perLoop?.statement, true))
                .blocked(initializer, false)),
        whileLoop: (predicate, body) => exp(predicate).truth
            ? exiting(() => interpret([body, statement]))
            : null,
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
        variable: (token) => recatch(token, () => env.get(token.literal)),
        literal: id,
        ternary: (predicate, yes, no) =>
            exp(predicate) as bool ? exp(yes) : exp(no),
        unary: (token, expression) => token.op(exp(expression)),
      );

  Object? scoped(Object? Function() callback, [Environment? forked]) {
    envs.add(forked ?? env);
    env.push;
    final Object? value;
    try {
      value = callback();
    } finally {
      env.pop;
      envs.removeLast();
    }
    return value;
  }

  T recatch<T>(Token token, Callback<T> callback) {
    try {
      return callback();
    } on MissingVariableError catch (e) {
      e.tag('missing var');
      env.debug;
      throw MissingTokenError(token, e);
    }
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

typedef Callback<T> = T Function();

class MissingTokenError extends RuntimeError {
  final Token token;

  final MissingVariableError caught;
  MissingTokenError(this.token, this.caught) : super(string(token, caught));

  @override
  String toString() => string(token, caught);

  static String string(Token token, MissingVariableError caught) =>
      [caught, token.string].unwords;
}
