import 'package:jlox/environment_key.dart';
import 'package:jlox/expression.dart';

import 'base.dart';
import 'statement.dart';
import 'token.dart';

mixin Resolver {
  void interpret(Program program);
  EnvironmentKey resolveVariable(EnvironmentKey token);
  Map<EnvironmentKey, EnvironmentKey?> get testDump;
  static Resolver get make => _ResolverImpl();
}

class _ResolverImpl with Resolver {
  final List<Map<ScopeKey, EnvironmentKey>> stack = [{}];
  final Map<EnvironmentKey, EnvironmentKey?> resolver = {};

  env(Function() callback) {
    stack.add({});
    callback();
    stack.removeLast();
  }

  proc(Statement? statement) => statement?.when(
        classDeclaration: (name, block) {
          define(name.key);
          env(() {
            define(thisKey);
            block.forEach(proc);
          });
        },
        expression: procExp,
        forLoop: (initializer, predicate, perLoop, body) {
          env(() {
            proc(initializer);
            procExp(predicate);
            procExp(perLoop);
            eProc(body);
          });
        },
        ifElse: (predicate, yes, no) {
          procExp(predicate);
          eProc(yes);
          eProc(no);
        },
        justIf: (predicate, yes) {
          procExp(predicate);
          eProc(yes);
        },
        print: procExp,
        returnStatement: (returnToken, returnValue) => procExp(returnValue),
        uninitialized: (variable) => define(variable.key),
        whileLoop: (predicate, body) {
          procExp(predicate);
          eProc(body);
        },
        breakStatement: (token) => null,
        function: declare,
        block: (brace, blocks) => env(() => blocks.forEach(proc)),
        declaration: declare,
      );

  void declare(Token token, Expression expression) {
    // TODO: switch order of statements
    define(token.key);
    procExp(expression);
  }

  void eProc(Statement statement) => env(() => proc(statement));

  void procExp(Expression? expression) => expression?.when(
        setter: (callee, identifier, right) {
          procExp(callee);
          procExp(right);
          return null;
        },
        assignment: (token, expression) {
          associate(token.key);
          return procExp(expression);
        },
        binary: (token, left, right) => [left, right].forEach(procExp),
        unary: (token, expression) => procExp(expression),
        grouping: procExp,
        variable: (token) => associate(token.key),
        ternary: (predicate, yes, no) => [predicate, yes, no].forEach(procExp),
        literal: (value) => null,
        invocation: (callee, calling) {
          procExp(callee);
          calling.whenOrNull(paren: (arguments) => arguments.forEach(procExp));
          return null;
        },
        function: (__, _, token, parameters, body) => env(() {
          parameters.map((t) => t.key).forEach(define);
          eProc(body);
        }),
      );

  void define(EnvironmentKey variable) =>
      stack.last[variable.scopeKey] = variable;

  void associate(EnvironmentKey element) =>
      resolver[element] = resolve(element);

  EnvironmentKey? resolve(EnvironmentKey element) =>
      stack.reversed.map((e) => e[element.scopeKey]).withoutNulls.firstOrNull;

  @override
  void interpret(Program program) => program.forEach(proc);

  @override
  EnvironmentKey resolveVariable(EnvironmentKey token) =>
      resolver[token] ?? token;

  @override
  Map<EnvironmentKey, EnvironmentKey?> get testDump => resolver;
}

extension<T> on Iterable<T> {
  T? get firstOrNull => isEmpty ? null : first;
}
