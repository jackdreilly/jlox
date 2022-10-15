import 'dart:io';

import 'package:jlox/base.dart';
import 'package:jlox/interpreter.dart';
import 'package:jlox/parser.dart';
import 'package:jlox/scanner.dart';
import 'package:jlox/token.dart';

import 'errors.dart';

final interpreter = Interpreter();

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
  final value = run(last.read ?? last);
  if (value != 0) {
    return value;
  }
  return runPrompt();
}

int run(String program) {
  final scanned = program.scan;
  if (hadError) {
    return 70;
  }
  final parsed = scanned.parse;
  if (hadError) {
    return 70;
  }
  try {
    final interpreted = interpreter.interpret(parsed)?.toString();
    if (interpreted != null) {
      interpreted.dump;
    }
  } on RuntimeError catch (e) {
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
