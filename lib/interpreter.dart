import 'package:jlox/token_type.dart';

import 'base.dart';
import 'expression.dart';
import 'parser.dart';

extension StringInterpreterExtension on String {
  Object? get interpret => parse.interpret;
}

extension InterpreterExtension on Expression {
  Object? get interpret => when(
        ternary: (predicate, yes, no) =>
            predicate.interpret.truth ? yes.interpret : no.interpret,
        binary: (tokenType, left, right) =>
            tokenType.op(left.interpret, right.interpret),
        unary: (tokenType, expression) => tokenType.op(expression.interpret),
        literal: id,
        grouping: (expression) => expression.interpret,
      );
}
