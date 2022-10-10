import 'base.dart';
import 'expression.dart';
import 'parser.dart';
import 'token.dart';
import 'token_type.dart';

extension StringInterpreterExtension on String {
  Object? get interpret => parse.interpret;
}

extension InterpreterExtension on Expression {
  Object? get interpret => when(
        ternary: (predicate, yes, no) =>
            predicate.interpret.truth ? yes.interpret : no.interpret,
        binary: (token, left, right) =>
            token.op(left.interpret, right.interpret),
        unary: (token, expression) => token.op(expression.interpret),
        literal: id,
        grouping: (expression) => expression.interpret,
      );
}
