class Node<T>{
  Node({required this.value, this.next});
  T value;
  Node<T>? next;

  @override
  String toString() {
    if(this.next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E>{
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  void push(E value){
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void append(E value){
    if(this.isEmpty){
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  Node<E>? nodeAt(int index){
    var currentNode = head;
    var currentIndex = 0;

    while(currentNode != null && currentIndex < index){
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  Node<E> insertAfter(Node<E> node, E value){
    if(tail == node){
      append(value);
      return tail!;
    }
    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  @override
  String toString() {
    if(isEmpty) return 'Empty list';
    return head.toString();
  }
}