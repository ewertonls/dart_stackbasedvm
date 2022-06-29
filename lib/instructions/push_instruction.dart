import 'instruction_interface.dart';

import '../stack.dart';

class Push implements Instruction {
  Push(this._operand);

  final int _operand;

  get operand => _operand;

  @override
  void call(Stack stack) {
    stack.push(_operand);
  }
}
