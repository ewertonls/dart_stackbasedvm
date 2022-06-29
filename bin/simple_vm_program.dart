import 'package:stackbased_vm/stackbased_vm.dart';

void main(List<String> arguments) {
  VM vm = VM(vmStackCapacity: 1024);

  Program sumTwoNumbers = Program([
    Push(20),
    Push(44),
    Add(),
    Print(),
  ]);

  vm.runProgram(sumTwoNumbers);
}
