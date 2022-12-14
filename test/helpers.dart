import 'dart:async';
import 'dart:io';

import 'package:jlox/base.dart';
import 'package:jlox/errors.dart';
import 'package:jlox/token.dart';
import 'package:jlox/token_type.dart';
import 'package:test/test.dart';
export 'package:jlox/base.dart' show wire;

extension SE on String {
  String operator /(String other) => [this, other].join('/');
  String get prog => progs / [this, 'lox'].join('.');
}

final progs = 'test' / 'programs';

Matcher get eof => TT.EOF.token;

extension TestE on Object? {
  equals(dynamic value) => expect(this, value);
}

extension TTE on TT {
  Matcher get token => predicate<Token>((p0) => p0.tokenType == this);
}

extension TE on Token {
  Token onLine(int line) => copyWith(line: line);
}

fails(Function() callback) => () {
      callback();
      expect(hadError, true);
      hadError = false;
    };

class FakeStreamConsumer implements StreamConsumer<List<int>> {
  @override
  Future addStream(Stream stream) async {}

  @override
  Future close() async {}
}

get testWire {
  if (Platform.environment["W"] != null) {
    wire;
    return;
  }
  myStderr = IOSink(FakeStreamConsumer());
  myStdout = IOSink(FakeStreamConsumer());
}
