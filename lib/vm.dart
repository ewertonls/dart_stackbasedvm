import 'program.dart';
import 'stack.dart';

class VM {
  VM({this.vmStackCapacity = 1024}) : _stackCapacity = vmStackCapacity;
  final int _stackCapacity;
  final int vmStackCapacity;

  late Stack stack = Stack(stackCapacity: _stackCapacity);

  void runProgram(Program program) {
    for (final instruction in program.instructions) {
      instruction.call(stack);
    }
  }
}
