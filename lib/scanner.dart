import 'dart:io';
import 'dart:math';

import 'package:jlox/base.dart';
import 'package:jlox/errors.dart';
import 'package:jlox/token.dart';
import 'package:tuple/tuple.dart';

import 'token_type.dart';

final singleCharTokens = {
  '(': TT.LEFT_PAREN,
  ')': TT.RIGHT_PAREN,
  '{': TT.LEFT_BRACE,
  '}': TT.RIGHT_BRACE,
  ',': TT.COMMA,
  '.': TT.DOT,
  '-': TT.MINUS,
  '+': TT.PLUS,
  ';': TT.SEMICOLON,
  '*': TT.STAR,
};

final doubles = {
  '!': '='.tupe(TT.BANG_EQUAL).tupe(TT.BANG),
  '=': '='.tupe(TT.EQUAL_EQUAL).tupe(TT.EQUAL),
  '<': '='.tupe(TT.LESS_EQUAL).tupe(TT.LESS),
  '>': '='.tupe(TT.GREATER_EQUAL).tupe(TT.GREATER)
};

class _Scanner {
  final String string;
  var line = 0;
  var current = 0;
  var start = 0;

  _Scanner(this.string);

  get where => "";
  Token token(TT tt, [dynamic literal]) => Token(
      tokenType: tt, lexeme: lexeme, literal: literal ?? lexeme, line: line);
  String get lexeme => string.slice(start, min(string.length, current));
  get fail => report("Unexpected character", line: line);
  bool match(String s) =>
      string.slice(current, current + 1) == s && current++ > 0;
  bool get isAtEnd => start >= string.length || current > string.length;
  int? get char => isAtEnd ? null : string.codeUnitAt(start);
  String? get str => char == null ? null : String.fromCharCode(char!);
  Token? get trySingle => singleCharTokens[str]?.token(this);
  Token? get tryDouble => doubles[str]?.token(this);
  get goToEnd => current = string.length;
  void get scooch => current++;
  Iterable<Token> get scan sync* {
    start = current;
    final str = this.str;
    final char = this.char;
    if (str == null || char == null) {
      yield token(TT.EOF);
      return;
    }
    scooch;
    final firstTry = trySingle ?? tryDouble;
    if (firstTry != null) {
      yield firstTry;
      yield* scan;
      return;
    }
    if (str == '/') {
      if (match('/')) {
        current = string.indexOf('\n', current);
        if (current < 0) {
          goToEnd;
        }
      } else {
        yield TT.SLASH.token(this);
      }
      yield* scan;
      return;
    }
    if (str == '"') {
      final next = string.indexOf('"', current) + 1;
      if (next <= 0) {
        failed("no close quote");
        return;
      }
      current = next;
      linify;
      yield token(TT.STRING, lexeme.slice(1, lexeme.length - 1));
      yield* scan;
      return;
    }
    if (str.isSpace) {
      current +=
          r'\s*'.re.matchAsPrefix(string, current)?.group(0)?.length ?? 0;
      linify;
      yield* scan;
      return;
    }
    if (str.isDigit) {
      current +=
          r'\d*(\.\d+)?'.re.matchAsPrefix(string, current)?.group(0)?.length ??
              0;
      yield token(TT.NUMBER, int.tryParse(lexeme) ?? double.parse(lexeme));
      yield* scan;
      return;
    }
    if (str.isAlpha) {
      current +=
          r'\w*'.re.matchAsPrefix(string, current)?.group(0)?.length ?? 0;
      yield token(lexeme.asIdentifier);
      yield* scan;
      return;
    }
    failed("unexpected token ($lexeme)");
  }

  get linify => line += lexeme.count('\n');

  void failed(String s) => report(s,
      line: line, where: {'start': start, 'current': current}.toString());
}

extension on TT {
  Token token(_Scanner scanner) => scanner.token(this);
}

extension on Tuple3<String, TT, TT> {
  Token token(_Scanner scanner) =>
      scanner.token(scanner.match(item1) ? item2 : item3);
}

extension ScannerString on String {
  Iterable<Token> get scan => file?.scan ?? _Scanner(this).scan;
}

extension ScannerFile on File {
  Iterable<Token> get scan => readAsStringSync().scan;
}
