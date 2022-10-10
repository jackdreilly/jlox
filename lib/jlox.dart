import 'dart:io';

import 'package:jlox/base.dart';
import 'package:jlox/expression.dart';
import 'package:jlox/parser.dart';

import 'errors.dart';

int main(List<String> args) {
  if (args.length > 1) {
    print('usage: jlox [script]');
    return 64;
  }
  if (args.isEmpty) {
    return runPrompt();
  }
  return runProgram(args.last);
}

int runProgram(String last) {
  return run(File(last).readAsStringSync());
}

int run(String program) {
  program.parse.pretty.log;
  if (hadError) {
    return 65;
  }
  return 0;
}

int runPrompt() {
  '> '.dump;
  final input = stdin.readLineSync();
  newline;
  if (input == null) {
    return 0;
  }
  run(input);
  hadError = false;
  return runPrompt();
}
