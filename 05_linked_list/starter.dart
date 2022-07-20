import 'linked_list.dart';

main(){
  final node1 = Node(value: 1);
  final node2 = Node(value: 2);
  final node3 = Node(value: 3);

  node1.next = node2;
  node2.next = node3;
  print(node1);

  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  list.push(0);

  var middleNode = list.nodeAt(1)!;
  list.insertAfter(middleNode, 22);

  print('Before: $list');
  final poppedValue = list.pop();
  print('Popped Value: $poppedValue');
  print('After: $list');

  print('--------------------------------------------');

  print('Before: $list');
  final removedValue = list.removeLast();
  print('remove Last: $removedValue');
  print('After: $list');

  print('--------------------------------------------');

  print('Before: $list');
  final firstNode = list.nodeAt(0);
  final removedValueAfter = list.removeAfter(firstNode!);
  print('remove Last: $removedValueAfter');
  print('After: $list');

}