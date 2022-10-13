import 'package:jlox/expression.dart';

import 'base.dart';
import 'statement.dart';
import 'token.dart';

typedef Resolver = Map<Token, Token?>;

extension ProgramExt on Program {
  Resolver get resolve => _Resolver(this).resolver;
}

class _Resolver {
  final Program program;
  final List<Map<String, Token>> stack = [{}];
  final Resolver resolver = {};

  _Resolver(this.program) {
    program.forEach(proc);
  }

  env(Function() callback) {
    stack.add({});
    callback();
    stack.removeLast();
  }

  proc(Statement? statement) => statement?.when(
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
        uninitialized: define,
        whileLoop: (predicate, body) {
          procExp(predicate);
          eProc(body);
        },
        breakStatement: (token) => null,
        function: proc,
        block: (brace, blocks) => env(() => blocks.forEach(proc)),
        declaration: (variable, expression) {
          // TODO: switch order of statements
          define(variable);
          procExp(expression);
        },
      );

  void eProc(Statement statement) => env(() => proc(statement));

  void procExp(Expression? expression) => expression?.when(
        assignment: (token, expression) {
          associate(token);
          return procExp(expression);
        },
        binary: (token, left, right) => [left, right].forEach(procExp),
        unary: (token, expression) => procExp(expression),
        grouping: procExp,
        variable: associate,
        ternary: (predicate, yes, no) => [predicate, yes, no].forEach(procExp),
        literal: (value) => null,
        invocation: (callee, invocations) =>
            [callee, ...invocations.expand(id)].forEach(procExp),
        function: (token, parameters, body) => env(() {
          parameters.forEach(define);
          eProc(body);
        }),
      );

  void define(Token variable) => stack.last[variable.lexeme] = variable;

  void associate(Token element) => resolver[element] = resolve(element);

  Token? resolve(Token element) =>
      stack.reversed.map((e) => e[element.lexeme]).withoutNulls.firstOrNull;
}

extension<T> on Iterable<T> {
  T? get firstOrNull => isEmpty ? null : first;
}
