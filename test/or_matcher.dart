import 'package:jlox/base.dart';
import 'package:test/test.dart';

extension OrMatcherExt on Matcher {
  Matcher or(Matcher other) => AnyMatcher([this, other]);
}

class AnyMatcher extends Matcher {
  final List<Matcher> list;

  AnyMatcher(this.list);

  @override
  Description describe(Description description) => description
      .add(['or', ...list.map((e) => e.describe(description))].unwords);

  @override
  bool matches(item, Map matchState) =>
      list.any((element) => element.matches(item, matchState));
}
