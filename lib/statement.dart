import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlox/base.dart';
import 'package:jlox/token_type.dart';

import 'expression.dart';
import 'token.dart';

part 'statement.freezed.dart';

@freezed
class Statement with _$Statement {
  const factory Statement.classDeclaration(
      {required Token name,
      required Expression? superClass,
      required List<FunctionStatement> methods}) = ClassDeclaration;
  const factory Statement.function(
      {required Token nameToken,
      required Expression function}) = FunctionStatement;
  const factory Statement.breakStatement(Token token) = Break;
  const factory Statement.returnStatement(
      {required Token returnToken, required Expression? returnValue}) = Return;
  const factory Statement.expression(Expression expression) =
      ExpressionStatement;
  const factory Statement.print(Expression expression) = PrintStatement;
  const factory Statement.block(
      {required Token brace, required List<Statement> blocks}) = BlockStatement;
  const factory Statement.declaration(
      {required Token variable,
      required Expression expression}) = DeclarationStatement;
  const factory Statement.uninitialized(Token variable) = Uninitialized;
  const factory Statement.forLoop(
      {Statement? initializer,
      Expression? predicate,
      Expression? perLoop,
      required Statement body}) = ForLoop;
  const factory Statement.whileLoop(
      {required Expression predicate, required Statement body}) = While;
  const factory Statement.justIf(
      {required Expression predicate, required Statement yes}) = JustIf;
  const factory Statement.ifElse({
    required Expression predicate,
    required Statement yes,
    required Statement no,
  }) = IfElse;
}

typedef Program = List<Statement>;

extension ProgramExtension on Program {
  String get pretty => map((e) => e.pretty).unlines;
}

extension StatementExtension on Statement {
  String get pretty => when(
      function: (nameToken, function) =>
          (function as FunctionExpression).prettify(nameToken.lexeme),
      classDeclaration: (name, superClass, block) => [
            'class',
            name.lexeme,
            if (superClass != null) '<',
            if (superClass != null) superClass.pretty,
            '{${block.pretty}}'
          ].unwords,
      returnStatement: (returnToken, returnValue) => [
            returnToken.tokenType.string,
            returnValue?.pretty
          ].withoutNulls.unwords,
      breakStatement: (token) => token.tokenType.string,
      forLoop: (initializer, predicate, perLoop, body) =>
          'for (${initializer?.pretty ?? ''};${predicate?.pretty ?? ''};${perLoop?.pretty ?? ''}) ${body.pretty}',
      whileLoop: (predicate, body) =>
          ['while', '(${predicate.pretty})', body.pretty].unwords,
      justIf: (predicate, yes) =>
          ['if', '(${predicate.pretty})', yes.pretty].unwords,
      ifElse: (predicate, yes, no) => [
            'if',
            '(${predicate.pretty})',
            yes.pretty,
            'else',
            '(${no.pretty})'
          ].unwords,
      uninitialized: (variable) => ['var', variable.literal].unwords,
      block: (token, blocks) => ['{', blocks.pretty, '}'].unlines,
      declaration: (variable, expression) =>
          ['var', variable.literal, '=', expression.pretty].unwords,
      expression: (expression) => expression.pretty,
      print: (expression) => ['print', expression.pretty].unwords);
  Program get program => [this];
}

extension ExpressionExtension on Expression {
  Statement get statement => Statement.expression(this);
  Program get program => statement.program;
}
