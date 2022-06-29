import 'instruction_interface.dart';
import '../stack.dart';

class Print implements Instruction {
  @override
  void call(Stack stack) {
    print("${stack.pop()}");
  }
}
