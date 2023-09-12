import 'program.dart';
import 'stack.dart';

class VM {
  final int vmStackCapacity;
  late final Stack stack;

  VM({this.vmStackCapacity = 1024}){
    stack = Stack(stackCapacity: vmStackCapacity);
  }

  void runProgram(Program program) {
    for (final instruction in program.instructions) {
      instruction.call(stack);
    }
  }
}
