import '../stack.dart';

abstract class Instruction {
  void call(Stack stack);
}
