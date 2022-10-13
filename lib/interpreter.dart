import 'package:jlox/environment.dart';
import 'package:jlox/expression.dart';
import 'package:jlox/lox_function.dart';
import 'package:jlox/resolver.dart';
import 'package:jlox/statement.dart';
import 'package:jlox/token.dart';
import 'package:jlox/token_type.dart';

import 'base.dart';
import 'exiter.dart';

class Interpreter {
  final envs = [Environment()];

  late Resolver resolver;
  Environment get env => envs.last;
  Object? interpret(Program program) {
    resolver = program.resolve;
    return _interpret(program);
  }

  Object? _interpret(Program program) =>
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
        function: (declaration) => interpretStatement(declaration),
        returnStatement: (token, returnValue) =>
            throw Exiter.returned(value: exp(returnValue), token: token),
        breakStatement: (token) => throw Exiter.broke(token: token),
        forLoop: (initializer, predicate, perLoop, body) => interpretStatement(
            Statement.whileLoop(
                    predicate: predicate ?? true.literal,
                    body: body.blocked(perLoop?.statement, true))
                .blocked(initializer, false)),
        whileLoop: (predicate, body) => exp(predicate).truth
            ? exiting(() => _interpret([body, statement]))
            : null,
        justIf: (predicate, yes) =>
            exp(predicate) as bool ? scopedStatement(yes) : null,
        ifElse: (predicate, yes, no) =>
            exp(predicate) as bool ? scopedStatement(yes) : scopedStatement(no),
        block: (token, blocks) => scoped(() => _interpret(blocks)),
        expression: exp,
        print: (expression) => print(exp(expression)),
        uninitialized: (variable) {
          env.define(variable);
          return null;
        },
        declaration: (variable, expression) {
          env.declare(variable, exp(expression));
          return null;
        },
      );

  Object? exp(Expression? expression) => expression?.when(
        function: (token, parameters, body) {
          final clone = env.clone(token);
          return ((List arguments) => scoped(() {
                parameters.zip(arguments).forEach(
                    (element) => env.declare(element.item1, element.item2));
                ['CALLING', token.lexeme, token.line].unwords.log;
                env.debug;
                return exiting(() => interpretStatement(body));
              }, clone)).loxFunction(token);
        },
        invocation: (callee, arguments) {
          var value = exp(callee);
          for (final argument in arguments) {
            value = (value as dynamic)(argument.map(exp).list);
          }
          return value;
        },
        assignment: (token, expression) =>
            env.assign(resolve(token), exp(expression)),
        binary: (token, left, right) => token.tokenType.isShortCircuit
            ? token.op(() => exp(left), () => exp(right))
            : token.op(exp(left), exp(right)),
        grouping: exp,
        variable: (token) => env.get(resolve(token)),
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

  Object? scopedStatement(Statement statement) =>
      scoped(() => _interpret([statement]));

  Token resolve(Token token) => resolver[token] ?? token;
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
