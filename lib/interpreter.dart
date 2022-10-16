import 'package:jlox/environment.dart';
import 'package:jlox/environment_key.dart';
import 'package:jlox/expression.dart';
import 'package:jlox/lox_fieldable.dart';
import 'package:jlox/lox_function.dart';
import 'package:jlox/lox_instance.dart';
import 'package:jlox/parser.dart';
import 'package:jlox/resolver.dart';
import 'package:jlox/statement.dart';
import 'package:jlox/token.dart';
import 'package:jlox/token_type.dart';

import 'base.dart';
import 'exiter.dart';
import 'lox_class.dart';
import 'lox_super.dart';

class Interpreter {
  final envs = [Environment()];
  Interpreter() {
    interpret('/Users/jack/jlox/prelude.lox'.read!.parse);
    env.swap(
        'toString', ((List arguments) => arguments.first.toString()).callable);
  }

  final resolver = Resolver.make;
  Environment get env => envs.last;
  Object? interpret(Program program) {
    resolver.interpret(program);
    return _interpret(program);
  }

  Object? _interpret(Program program) =>
      program.isEmpty ? null : program.map(interpretStatement).list.last;
  T exiting<T>(Callback<T> callback) {
    try {
      return callback();
    } on Exiter catch (e) {
      return e.value;
    }
  }

  Object? interpretStatement(Statement statement) => statement.when(
        classDeclaration: (name, superClass, methods) {
          env.declare(name.key, scoped(() {
            LoxClass? loxSuper;
            Environment cloned = env.clone(name.string);
            if (superClass != null) {
              loxSuper = exp(superClass) as LoxClass;
              cloned.push;
              cloned.declare(superKey, loxSuper);
            }
            return LoxClass(
                name,
                loxSuper,
                methods
                    .map((e) => LoxFunction(
                          interpreter: this,
                          function: e.function as FunctionExpression,
                          environment: cloned,
                        ))
                    .list);
          }));
          return null;
        },
        function: (nameToken, function) {
          env.declare(nameToken.key, exp(function));
          return null;
        },
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
          env.define(variable.key);
          return null;
        },
        declaration: (variable, expression) {
          env.declare(variable.key, exp(expression));
          return null;
        },
      );

  Object? exp(Expression? expression) => expression?.when(
        setter: (callee, identifier, right) =>
            (exp(callee) as LoxInstance).setProperty(identifier, exp(right)),
        function: (i, _, token, ___, ____) => LoxFunction(
            interpreter: this,
            function: expression as FunctionExpression,
            environment: env.clone(token.string)),
        invocation: (callee, calling) {
          final calleeValue = exp(callee);

          return calling.when(
            dot: (token) => (calleeValue as LoxFieldable).getField(token),
            paren: (arguments) =>
                (calleeValue as LoxCallable).call(arguments.map(exp).list),
          );
        },
        assignment: (token, expression) =>
            env.assign(resolve(token), exp(expression)),
        binary: (token, left, right) => token.tokenType.isShortCircuit
            ? token.op(() => exp(left), () => exp(right))
            : token.op(exp(left), exp(right)),
        grouping: exp,
        variable: (token) {
          final result = env.get(resolve(token));
          if (token.tokenType == TT.SUPER) {
            return LoxSuper(
                env.get(thisKey) as LoxInstance, result as LoxClass);
          }
          return result;
        },
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

  EnvironmentKey resolve(Token token) => resolver.resolveVariable(token.key);
}

extension on Statement {
  Statement blocked(Statement? other, bool front) => other == null
      ? this
      : Statement.block(
          brace: Token(
              position: 0,
              lexeme: "{",
              literal: null,
              line: 0,
              tokenType: TT.LEFT_BRACE),
          blocks: front ? [this, other] : [other, this]);
}

typedef Callback<T> = T Function();
