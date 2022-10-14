import 'package:jlox/expression.dart';

import 'base.dart';
import 'statement.dart';
import 'token.dart';

mixin Resolver {
  void interpret(Program program);
  Token resolveVariable(Token token);
  Map<Token, Token?> get testDump;
  static Resolver get make => _ResolverImpl();
}

class _ResolverImpl with Resolver {
  final List<Map<String, Token>> stack = [{}];
  final Map<Token, Token?> resolver = {};

  env(Function() callback) {
    stack.add({});
    callback();
    stack.removeLast();
  }

  proc(Statement? statement) => statement?.when(
        classDeclaration: (name, block) {
          define(name);
          proc(block);
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
        invocation: (callee, calling) {
          procExp(callee);
          calling.when(
              dot: associate, paren: (arguments) => arguments.forEach(procExp));
          return null;
        },
        function: (_, token, parameters, body) => env(() {
          parameters.forEach(define);
          eProc(body);
        }),
      );

  void define(Token variable) => stack.last[variable.lexeme] = variable;

  void associate(Token element) => resolver[element] = resolve(element);

  Token? resolve(Token element) =>
      stack.reversed.map((e) => e[element.lexeme]).withoutNulls.firstOrNull;

  @override
  void interpret(Program program) => program.forEach(proc);

  @override
  Token resolveVariable(Token token) => resolver[token] ?? token;

  @override
  Map<Token, Token?> get testDump => resolver;
}

extension<T> on Iterable<T> {
  T? get firstOrNull => isEmpty ? null : first;
}
