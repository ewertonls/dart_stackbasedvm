import 'instructions/exceptions/stack_overflow_exception.dart';
import 'instructions/exceptions/empty_stack_exception.dart';

class Stack {
  Stack({required this.stackCapacity})
      : _stack = List.filled(stackCapacity, 0, growable: false);

  final int stackCapacity;

  int _stackSize = 0;

  final List<int> _stack;

  int get top => _stack.first;

  void push(int value) {
    if (_stackSize > stackCapacity) {
      throw StackOverflowException("Stack overflow");
    }
    _stack[_stackSize++] = value;
  }

  int pop() {
    if (_stackSize <= 0) {
      throw EmptyStackException("Stack is empty");
    }
    return _stack[--_stackSize];
  }
}
