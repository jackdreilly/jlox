import 'package:jlox/base.dart';
import 'package:jlox/errors.dart';
import 'package:jlox/token.dart';

import 'expression.dart';
import 'scanner.dart';
import 'statement.dart';
import 'token_type.dart';

extension Parser on Iterable<Token> {
  Program get parse => _Parser(list).parse;
}

extension ParserString on String {
  Program get parse => scan.parse;
}

class _Parser {
  final List<Token> tokens;
  _Parser(this.tokens);

  Program get parse {
    try {
      return program();
    } on ParseError {
      return [];
    }
  }

  Token expect(TT firstToken, [TokenType? eof, bool advance = true]) {
    final token = advance ? eat : this.token;
    final expected = {firstToken, eof}.withoutNulls.toSet();
    if (!expected.contains(token.tokenType)) {
      fail(
          "Expected ${expected.map((e) => e.string).unwords}: got ${previous.string} at ${token.string}");
    }
    return token;
  }

  Token get previous => tokens[current - 1];

  Program program() {
    if (match({TT.EOF})) {
      return [];
    }
    return [declaration(), ...program()];
  }

  Statement declaration() =>
      (match({TT.VAR}) ? variableDeclaration() : statement()).and(maybeSemi);
  Token? maybeSemi() => match({TT.SEMICOLON}) ? eat : null;

  Statement variableDeclaration() {
    eat;
    final variable = eat;
    if (match({TT.EQUAL})) {
      eat;
      return Statement.declaration(
          variable: variable, expression: expression());
    }
    expect(TT.SEMICOLON, TT.EOF, false);
    return Statement.uninitialized(variable);
  }

  Statement statement() => ({
        TT.FOR: forLoop,
        TT.WHILE: whileLoop,
        TT.IF: ifElse,
        TT.LEFT_BRACE: block,
        TT.PRINT: printStatement,
        TT.BREAK: breakStatement,
      }[tokenType] ??
      expressionStatement)();
  Token get breakToken {
    if (breakableCount > 0) {
      return expect(TT.BREAK);
    }
    throw fail("break statement must be inside for/while loop ${token.string}");
  }

  Statement breakStatement() => Statement.breakStatement(breakToken);
  Statement expressionStatement() => Statement.expression(expression());
  Statement forLoop() {
    expect(TT.FOR);
    expect(TT.LEFT_PAREN);
    Statement? initializer() => match({TT.SEMICOLON})
        ? null
        : match({TT.VAR})
            ? variableDeclaration()
            : expressionStatement();

    Expression? predicate() => match({TT.SEMICOLON}) ? null : expression();
    Expression? perLoop() => match({TT.RIGHT_PAREN}) ? null : expression();
    return Statement.forLoop(
      initializer: initializer().and(maybeSemi),
      predicate: predicate().and(() => expect(TT.SEMICOLON)),
      perLoop: perLoop().and(() => expect(TT.RIGHT_PAREN)),
      body: statement.breakable(this),
    );
  }

  Statement printStatement() {
    eat;
    return Statement.print(expression());
  }

  Statement block() {
    final brace = expect(TT.LEFT_BRACE);
    final blocks = <Statement>[];
    while (!match({TT.RIGHT_BRACE})) {
      blocks.add(declaration());
    }
    expect(TT.RIGHT_BRACE);
    return Statement.block(brace: brace, blocks: blocks);
  }

  Statement ifElse() {
    eat;
    expect(TT.LEFT_PAREN);
    final predicate = expression();
    expect(TT.RIGHT_PAREN);
    final yes = statement();
    if (match({TT.ELSE})) {
      eat;
      final no = statement();
      return Statement.ifElse(predicate: predicate, yes: yes, no: no);
    }
    return Statement.justIf(predicate: predicate, yes: yes);
  }

  int breakableCount = 0;

  Statement whileLoop() {
    eat;
    expect(TT.LEFT_PAREN);
    final predicate = expression();
    expect(TT.RIGHT_PAREN);
    final body = statement.breakable(this);
    return Statement.whileLoop(predicate: predicate, body: body);
  }

  Expression expression() => assignment();
  Expression assignment() {
    final expr = logicOr();
    if (match({TT.EQUAL})) {
      final equal = expect(TT.EQUAL);
      final right = assignment();
      return expr.maybeWhen(
          variable: (token) =>
              Expression.assignment(expression: right, token: token),
          orElse: () => throw fail("Invalid assignment at ${equal.string}"));
    }
    return expr;
  }

  Expression logicOr() => starred(logicAnd, {TT.OR});
  Expression logicAnd() => starred(comma, {TT.AND});
  Expression comma() => starred(ternary, {TT.COMMA});
  Expression ternary() {
    final predicate = equality();
    if (match({TT.QUESTION_MARK})) {
      eat;
      final yes = ternary();
      expect(TT.COLON);
      return Expression.ternary(
        predicate: predicate,
        yes: yes,
        no: ternary(),
      );
    }
    return predicate;
  }

  Expression equality() => starred(comparison, {TT.BANG_EQUAL, TT.EQUAL_EQUAL});
  Expression comparison() =>
      starred(term, {TT.LESS, TT.GREATER, TT.LESS_EQUAL, TT.GREATER_EQUAL});
  Expression term() => starred(factor, {TT.PLUS, TT.MINUS});
  Expression factor() => starred(unary, {TT.STAR, TT.SLASH});
  Expression unary() => match({TT.MINUS, TT.BANG})
      ? Expression.unary(token: token.and(() => eat), expression: unary())
      : primary();
  Expression primary() {
    if (isAtEnd) {
      throw fail("Unexpected EOF");
    }
    final maybeExpression = token.expression;
    if (maybeExpression != null) {
      eat;
      return maybeExpression;
    }
    if (match({TT.LEFT_PAREN})) {
      eat;
      final grouping = Expression.grouping(expression());
      expect(TT.RIGHT_PAREN);
      return grouping;
    }
    throw fail("Expected primary, got ${token.string}");
  }

  ParseError fail(String message) {
    report(message);
    return ParseError();
  }

  Expression starred(Expression Function() maker, Set<TT> tokens) {
    Expression c = maker();

    while (match(tokens)) {
      c = Expression.binary(
          token: token.and(() => eat), left: c, right: maker());
    }
    return c;
  }

  bool get isAtEnd => current >= tokens.length;

  bool match(Iterable<TT> tokens) => !isAtEnd && tokens.contains(tokenType);
  TT get tokenType => token.tokenType;
  dynamic get literal => token.literal;
  Token get token => tokens[current];
  int current = 0;
  Token get eat => token.and(() => current++);
}

class ParseError extends Error {
  ParseError() {
    hadError = true;
  }
}

extension on Statement Function() {
  Statement breakable(_Parser parser) {
    parser.breakableCount++;
    final value = this();
    parser.breakableCount--;
    return value;
  }
}
