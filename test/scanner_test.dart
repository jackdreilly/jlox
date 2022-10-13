import 'package:jlox/base.dart';
import 'package:jlox/scanner.dart';
import 'package:jlox/token.dart';
import 'package:jlox/token_type.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  testWire;
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
      'all_tokens'.prog.scan.list.map((e) => e.line.tupe(e.tokenType)).shouldBe(
          TokenType.values.enumerate.map((e) => (e.item1 + 1).tupe(e.item2))));
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
  test('comment', 'comment'.prog.scan.list.shouldBe([eof]));
  test('>=', '>='.scan.list.shouldBe([TT.GREATER_EQUAL.token, eof]));
  test('==', '=='.scan.list.shouldBe([TT.EQUAL_EQUAL.token, eof]));
  test('=', '='.scan.list.shouldBe([TT.EQUAL.token, eof]));
  test(
      'two_lines',
      'two_lines'.prog.scan.list.shouldBe([
        Token(
            lexeme: '5',
            position: 1,
            line: 1,
            literal: 5,
            tokenType: TT.NUMBER),
        Token(
            lexeme: '3',
            position: 4,
            line: 3,
            literal: 3,
            tokenType: TT.NUMBER),
        eof,
      ]));
  test('front matter', () {
    'assign'.prog.equals('test/programs/assign.lox');
    'assign'.prog.read.equals('xy = 35');
  });
  test('calculate', () {
    'assign'.prog.equals('test/programs/assign.lox');
    r'\w*'.re.matchAsPrefix('print', 0)?.group(0)?.length.equals(5);
    expect(''.scan, [eof]);
    expect('print'.scan, [TT.PRINT.token, eof]);
  });
  test(
      'assign',
      () => 'assign'.prog.scan.list.equals([
            Token(
                tokenType: TT.IDENTIFIER,
                lexeme: 'xy',
                position: 2,
                line: 1,
                literal: 'xy'),
            Token(
                tokenType: TT.EQUAL,
                lexeme: '=',
                position: 4,
                line: 1,
                literal: '='),
            Token(
                tokenType: TT.NUMBER,
                lexeme: '35',
                position: 7,
                line: 1,
                literal: 35),
            eof
          ]));
  test(
      'fib',
      'fib'.prog.scan.list.map((e) => e.tokenType).list.shouldBe([
        TokenType.FUN,
        TokenType.IDENTIFIER,
        TokenType.LEFT_PAREN,
        TokenType.IDENTIFIER,
        TokenType.RIGHT_PAREN,
        TokenType.LEFT_BRACE,
        TokenType.IF,
        TokenType.LEFT_PAREN,
        TokenType.IDENTIFIER,
        TokenType.LESS,
        TokenType.NUMBER,
        TokenType.RIGHT_PAREN,
        TokenType.LEFT_BRACE,
        TokenType.RETURN,
        TokenType.NUMBER,
        TokenType.RIGHT_BRACE,
        TokenType.RETURN,
        TokenType.IDENTIFIER,
        TokenType.LEFT_PAREN,
        TokenType.IDENTIFIER,
        TokenType.MINUS,
        TokenType.NUMBER,
        TokenType.RIGHT_PAREN,
        TokenType.PLUS,
        TokenType.IDENTIFIER,
        TokenType.LEFT_PAREN,
        TokenType.IDENTIFIER,
        TokenType.MINUS,
        TokenType.NUMBER,
        TokenType.RIGHT_PAREN,
        TokenType.RIGHT_BRACE,
        TokenType.EOF,
      ]));
}
