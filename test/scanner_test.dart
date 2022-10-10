import 'package:jlox/base.dart';
import 'package:jlox/scanner.dart';
import 'package:jlox/token.dart';
import 'package:jlox/token_type.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  test(
      'ternary',
      '3 * 5 < 2 ? "yes" + "you" : "no" + "boom"'
          .scan
          .map((e) => e.tokenType)
          .list
          .shouldBe([
        TT.NUMBER,
        TT.STAR,
        TT.NUMBER,
        TT.LESS,
        TT.NUMBER,
        TT.QUESTION_MARK,
        TT.STRING,
        TT.PLUS,
        TT.STRING,
        TT.COLON,
        TT.STRING,
        TT.PLUS,
        TT.STRING,
        TT.EOF,
      ]));
  test(
      '1,2',
      '1,2'.scan.shouldBe(
          [TT.NUMBER, TT.COMMA, TT.NUMBER, TT.EOF].map((e) => e.token).list));
  test('@', fails(() => '@'.scan.list));
  test(
      'all tokens',
      'all_tokens'
          .prog
          .scan
          .list
          .map((e) => e.line.tupe(e.tokenType))
          .shouldBe(TokenType.values.enumerate));
  // !("hi" == (5 + 3 * 2))
  test(
      'multi_group',
      'multi_group'.prog.scan.list.shouldBe([
            TT.BANG,
            TT.LEFT_PAREN,
            TT.STRING,
            TT.EQUAL_EQUAL,
            TT.LEFT_PAREN,
            TT.NUMBER,
            TT.PLUS,
            TT.NUMBER,
            TT.STAR,
            TT.NUMBER,
            TT.RIGHT_PAREN,
            TT.RIGHT_PAREN,
            TT.EOF,
          ].map((e) => e.token).list));
  test('comment', 'comment'.prog.scan.list.shouldBe([eof.onLine(5)]));
  test('>=', '>='.scan.list.shouldBe([TT.GREATER_EQUAL.token, eof]));
  test('==', '=='.scan.list.shouldBe([TT.EQUAL_EQUAL.token, eof]));
  test('=', '='.scan.list.shouldBe([TT.EQUAL.token, eof]));
  test(
      'two_lines',
      'two_lines'.prog.scan.list.shouldBe([
        Token(lexeme: '5', line: 0, literal: 5, tokenType: TT.NUMBER),
        Token(lexeme: '3', line: 2, literal: 3, tokenType: TT.NUMBER),
        eof.onLine(2),
      ]));
  test('front matter', () {
    'assign'.prog.equals('test/programs/assign.lox');
    'assign'.prog.read.equals('xy = 35');
  });
  test('calculate', () {
    'assign'.prog.equals('test/programs/assign.lox');
    r'\w*'.re.matchAsPrefix('print', 0)?.group(0)?.length.equals(5);
    expect(''.scan, [eof]);
    expect('print'.scan, [
      Token(tokenType: TT.PRINT, lexeme: 'print', line: 0, literal: 'print'),
      eof
    ]);
  });
  test(
      'assign',
      () => 'assign'.prog.scan.list.equals([
            Token(
                tokenType: TT.IDENTIFIER, lexeme: 'xy', line: 0, literal: 'xy'),
            Token(tokenType: TT.EQUAL, lexeme: '=', line: 0, literal: '='),
            Token(tokenType: TT.NUMBER, lexeme: '35', line: 0, literal: 35),
            eof
          ]));
  test(
      'fib',
      'fib'.prog.scan.list.shouldBe([
        Token(tokenType: TokenType.FUN, lexeme: "fun", literal: "fun", line: 0),
        Token(
            tokenType: TokenType.IDENTIFIER,
            lexeme: "fib",
            literal: "fib",
            line: 0),
        Token(
            tokenType: TokenType.LEFT_PAREN,
            lexeme: "(",
            literal: "(",
            line: 0),
        Token(
            tokenType: TokenType.IDENTIFIER,
            lexeme: "n",
            literal: "n",
            line: 0),
        Token(
            tokenType: TokenType.RIGHT_PAREN,
            lexeme: ")",
            literal: ")",
            line: 0),
        Token(
            tokenType: TokenType.LEFT_BRACE,
            lexeme: "{",
            literal: "{",
            line: 0),
        Token(tokenType: TokenType.IF, lexeme: "if", literal: "if", line: 1),
        Token(
            tokenType: TokenType.LEFT_PAREN,
            lexeme: "(",
            literal: "(",
            line: 1),
        Token(
            tokenType: TokenType.IDENTIFIER,
            lexeme: "n",
            literal: "n",
            line: 1),
        Token(tokenType: TokenType.LESS, lexeme: "<", literal: "<", line: 1),
        Token(tokenType: TokenType.NUMBER, lexeme: "2", literal: 2, line: 1),
        Token(
            tokenType: TokenType.RIGHT_PAREN,
            lexeme: ")",
            literal: ")",
            line: 1),
        Token(
            tokenType: TokenType.LEFT_BRACE,
            lexeme: "{",
            literal: "{",
            line: 1),
        Token(
            tokenType: TokenType.RETURN,
            lexeme: "return",
            literal: "return",
            line: 2),
        Token(tokenType: TokenType.NUMBER, lexeme: "1", literal: 1, line: 2),
        Token(
            tokenType: TokenType.RIGHT_BRACE,
            lexeme: "}",
            literal: "}",
            line: 3),
        Token(
            tokenType: TokenType.RETURN,
            lexeme: "return",
            literal: "return",
            line: 4),
        Token(
            tokenType: TokenType.IDENTIFIER,
            lexeme: "fib",
            literal: "fib",
            line: 4),
        Token(
            tokenType: TokenType.LEFT_PAREN,
            lexeme: "(",
            literal: "(",
            line: 4),
        Token(
            tokenType: TokenType.IDENTIFIER,
            lexeme: "n",
            literal: "n",
            line: 4),
        Token(tokenType: TokenType.MINUS, lexeme: "-", literal: "-", line: 4),
        Token(tokenType: TokenType.NUMBER, lexeme: "1", literal: 1, line: 4),
        Token(
            tokenType: TokenType.RIGHT_PAREN,
            lexeme: ")",
            literal: ")",
            line: 4),
        Token(tokenType: TokenType.PLUS, lexeme: "+", literal: "+", line: 4),
        Token(
            tokenType: TokenType.IDENTIFIER,
            lexeme: "fib",
            literal: "fib",
            line: 4),
        Token(
            tokenType: TokenType.LEFT_PAREN,
            lexeme: "(",
            literal: "(",
            line: 4),
        Token(
            tokenType: TokenType.IDENTIFIER,
            lexeme: "n",
            literal: "n",
            line: 4),
        Token(tokenType: TokenType.MINUS, lexeme: "-", literal: "-", line: 4),
        Token(tokenType: TokenType.NUMBER, lexeme: "2", literal: 2, line: 4),
        Token(
            tokenType: TokenType.RIGHT_PAREN,
            lexeme: ")",
            literal: ")",
            line: 4),
        Token(
            tokenType: TokenType.RIGHT_BRACE,
            lexeme: "}",
            literal: "}",
            line: 5),
        Token(tokenType: TokenType.EOF, lexeme: "", literal: "", line: 5)
      ]));
}
