import 'dart:io';

import 'package:jlox/base.dart';
import 'package:jlox/interpreter.dart';
import 'package:jlox/token.dart';

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
  try {
    program.interpret.toString().dump;
  } on CheckTokenError catch (e) {
    e.message.err;
  }
  newline;
  if (hadError) {
    return 65;
  }
  return 0;
}

int runPrompt() {
  '> '.dump;
  final input = stdin.readLineSync();
  if (input == null) {
    return 0;
  }
  run(input);
  hadError = false;
  return runPrompt();
}
