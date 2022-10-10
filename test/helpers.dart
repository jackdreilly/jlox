import 'package:jlox/token.dart';
import 'package:test/test.dart';
import 'package:jlox/token_type.dart';

extension SE on String {
  String operator /(String other) => [this, other].join('/');
  String get prog => progs / [this, 'lox'].join('.');
}

final progs = 'test' / 'programs';

Token get eof => Token(tokenType: TT.EOF, lexeme: '', line: 0, literal: '');

extension TestE<T> on T {
  equals(dynamic value) => expect(this, value);
  shouldBe(dynamic value) => () => equals(value);
}

extension TTE on TT {
  Matcher get token => predicate<Token>((p0) => p0.tokenType == this);
}

extension TE on Token {
  Token onLine(int line) => copyWith(line: line);
}
