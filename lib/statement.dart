import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jlox/base.dart';

import 'expression.dart';
import 'token.dart';

part 'statement.freezed.dart';

@freezed
class Statement with _$Statement {
  const factory Statement.expression(Expression expression) =
      ExpressionStatement;
  const factory Statement.print(Expression expression) = PrintStatement;
  const factory Statement.block(
      {required Token brace, required List<Statement> blocks}) = BlockStatement;
  const factory Statement.declaration(
      {required Token variable,
      required Expression expression}) = DeclarationStatement;
}

typedef Program = List<Statement>;

extension ProgramExtension on Program {
  String get pretty => map((e) => e.pretty).unlines;
}

extension StatementExtension on Statement {
  String get pretty => when(
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
