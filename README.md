# Stack-based Virtual Machine

A simple Stack-based Virtual Machine in Dart.

## Getting Started

A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

## Example

```dart
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
```

```console
$ dart run bin/simple_vm_program.dart
<64>
```
