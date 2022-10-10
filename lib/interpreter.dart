import 'package:jlox/token_type.dart';

import 'expression.dart';
import 'parser.dart';

extension StringInterpreterExtension on String {
  dynamic get interpret => parse.interpret;
}

extension InterpreterExtension on Expression {
  dynamic get interpret => when(
        ternary: (predicate, yes, no) =>
            predicate.interpret ? yes.interpret : no.interpret,
        binary: (tokenType, left, right) =>
            tokenType.op(left.interpret, right.interpret),
        unary: (tokenType, expression) => tokenType.op(expression),
        number: (number) => number,
        string: (string) => string,
        boolean: (boolean) => boolean,
        nil: () => null,
        grouping: (expression) => expression.interpret,
      );
}
