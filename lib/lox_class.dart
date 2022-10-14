import 'package:jlox/statement.dart';
import 'package:jlox/token.dart';

class LoxClass {
  final Token name;
  final Statement block;
  LoxClass(this.name, this.block);
  @override
  String toString() => '<class ${name.lexeme}>';
}
