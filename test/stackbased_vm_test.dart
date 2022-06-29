import 'package:stackbased_vm/stackbased_vm.dart';
import 'package:test/test.dart';

void main() {
  Program sumNumbers = Program([
    Push(16),
    Push(22),
    Add(),
    Push(32),
    Add(),
  ]);

  test("VM should run program as expected", () {
    final VM vm = VM()..runProgram(sumNumbers);
    expect(vm.stack.top, equals(70));
  });

  test("VM should should initialize right stack capacity", () {
    final vm1 = VM(vmStackCapacity: 2);
    final vm2 = VM(vmStackCapacity: 8);
    expect(vm1.stack.stackCapacity, equals(2));
    expect(vm2.stack.stackCapacity, equals(8));
  });
}
