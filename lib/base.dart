import 'dart:io';
import 'dart:math';

import 'package:tuple/tuple.dart';

extension NullIter<T> on Iterable<T?> {
  Iterable<T> get withoutNulls sync* {
    for (final x in this) {
      if (x != null) {
        yield x;
      }
    }
  }
}

IOSink myStderr = stderr;

extension DumpString on String {
  get dump => stdout..add(codeUnits);
  get err => myStderr
    ..add(codeUnits)
    ..nl;
  String slice(int start, int end) => substring(safe(start), safe(end));
  int safe(int v) => v >= 0 ? min(length, v) : max(0, length - v);
  int count(String s) => s.allMatches(this).length;
  bool get isSpace => RegExp(r'\s').hasMatch(this);
  bool get isDigit => char.isDigit;
  int get char => codeUnitAt(0);
  bool get isAlpha => startsWith(RegExp(r'[a-zA-Z_]'));
  RegExp get re => RegExp(this);
  String? get read => file?.readAsStringSync();
  File? get file => File(this).existsSync() ? File(this) : null;
}

extension on IOSink {
  get nl => add(['\n'.char]);
}

extension on int {
  bool get isDigit => this >= '0'.char && this <= '9'.char;
}

extension Log<T> on T {
  T get log => and(() => print(this));
}

extension WordsExt on Iterable {
  String get unwords => join(' ');
  String get unlines => join('\n');
}

extension LE<T> on Iterable<T> {
  List<T> get list => toList();
  Iterable<Tuple2<int, T>> get enumerate => ints.zip(this);
  Iterable<Tuple2<T, V>> zip<V>(Iterable<V> vs) sync* {
    final it1 = iterator;
    final it2 = vs.iterator;
    while (it1.moveNext() && it2.moveNext()) {
      yield it1.current.tupe(it2.current);
    }
  }
}

Iterable<int> get ints sync* {
  int a = 0;
  while (true) {
    yield a++;
  }
}

get newline => '\n'.dump;

extension Tupe<T> on T {
  Tuple2<T, S> tupe<S>(S s) => Tuple2(this, s);
  T and(Function() fn) {
    fn();
    return this;
  }
}

extension Tupe2<A, B> on Tuple2<A, B> {
  Tuple3<A, B, C> tupe<C>(C c) => Tuple3(item1, item2, c);
}

extension Tupe2Iter<A, B> on Iterable<Tuple2<A, B>> {
  Map<A, B> get asMap => Map.fromEntries(entries);
  Iterable<MapEntry<A, B>> get entries =>
      map((e) => MapEntry(e.item1, e.item2));
}

T id<T>(T t) => t;
