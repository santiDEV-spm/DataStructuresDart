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

  double tasa = 0.16;

  print(tasa.toStringAsPrecision(6));
  print(list);

}