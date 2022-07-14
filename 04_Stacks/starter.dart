
import 'stack.dart';

void main(){
  final stack = Stack<int>();
  for(int i = 0; i < 5; i++){
    stack.push(i);
  }
  print(stack);
  final element = stack.pop();
  print('Popped: $element');

  const list = ['S','M','O','K','E'];
  final smokeStack = Stack<String>.of(list);
  print(smokeStack);
}