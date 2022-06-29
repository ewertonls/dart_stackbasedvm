import 'instruction_interface.dart';
import '../stack.dart';

class Add implements Instruction {
  @override
  void call(Stack stack) {
    int a = stack.pop();
    int b = stack.pop();
    stack.push(a + b);
  }
}
