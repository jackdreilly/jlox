import 'base.dart';

enum TokenType {
  // Ternary
  COLON,
  QUESTION_MARK,
  // Single-character tokens.
  LEFT_PAREN,
  RIGHT_PAREN,
  LEFT_BRACE,
  RIGHT_BRACE,
  COMMA,
  DOT,
  MINUS,
  PLUS,
  SEMICOLON,
  SLASH,
  STAR,

  // One or two character tokens.
  BANG,
  BANG_EQUAL,
  EQUAL,
  EQUAL_EQUAL,
  GREATER,
  GREATER_EQUAL,
  LESS,
  LESS_EQUAL,

  // Literals.
  IDENTIFIER,
  STRING,
  NUMBER,

  // Keywords.
  AND,
  CLASS,
  ELSE,
  FALSE,
  FUN,
  FOR,
  IF,
  NIL,
  OR,
  PRINT,
  RETURN,
  SUPER,
  THIS,
  TRUE,
  VAR,
  WHILE,
  BREAK,

  EOF
}

final reservedWords = {
  TT.AND,
  TT.CLASS,
  TT.ELSE,
  TT.FALSE,
  TT.FOR,
  TT.FUN,
  TT.IF,
  TT.NIL,
  TT.OR,
  TT.PRINT,
  TT.RETURN,
  TT.SUPER,
  TT.BREAK,
  TT.THIS,
  TT.TRUE,
  TT.VAR,
  TT.WHILE,
};

extension ReservedString on String {
  TT get asIdentifier =>
      reservedWords.asNameMap()[toUpperCase()] ?? TT.IDENTIFIER;
}

typedef TT = TokenType;

final ttMap = [
  TT.COLON,
  TT.QUESTION_MARK,
  TT.LEFT_PAREN,
  TT.RIGHT_PAREN,
  TT.LEFT_BRACE,
  TT.RIGHT_BRACE,
  TT.COMMA,
  TT.DOT,
  TT.MINUS,
  TT.PLUS,
  TT.SEMICOLON,
  TT.SLASH,
  TT.STAR,
  TT.BANG,
  TT.BANG_EQUAL,
  TT.EQUAL,
  TT.EQUAL_EQUAL,
  TT.GREATER,
  TT.GREATER_EQUAL,
  TT.LESS,
  TT.LESS_EQUAL,
].zip([
  ':',
  '?',
  '(',
  ')',
  '{',
  '}',
  ',',
  '.',
  '-',
  '+',
  ';',
  '/',
  '*',
  '!',
  '!=',
  '=',
  '==',
  '>',
  '>=',
  '<',
  '<=',
]).asMap;

extension TTExt on TokenType {
  String get string => maybeString ?? name;
  String? get maybeString => ttMap[this];
  bool get isShortCircuit => {TT.AND, TT.OR}.contains(this);
}

extension Truthy on Object? {
  bool get truth {
    if (this is String) {
      return (this as String).isNotEmpty;
    }
    if (this is num) {
      return this != 0;
    }
    if (this is bool) {
      return this as bool;
    }
    if (this == null) {
      return false;
    }
    return false;
  }
}
