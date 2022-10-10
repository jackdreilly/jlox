import 'package:jlox/base.dart';

var hadError = false;
report(String message, {int? line, String? where}) {
  hadError = true;
  [line != null ? '[line $line]' : null, 'Error', where, ':', message]
      .withoutNulls
      .unwords
      .err;
}

extension ErrorString on String {
  get error => report(this);
}
