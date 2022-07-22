
void main(){
  DoublyLinkedList doublyLinkedList = new DoublyLinkedList();
  doublyLinkedList.insertFirst(20);
}

class Node<T>{
  Node({required this.value, this.previous, this.next});
  T value;
  Node<T>? next;
  Node<T>? previous;

  @override
  String toString() {
    return '${previous.toString()} <- $value -> ${next.toString()}';
  }
}

class DoublyLinkedList<E>{
  Node<E>? first;
  Node<E>? last;

  bool get isEmpty => first == null;

  void insertFirst(E value){
    final newNode = Node(value: value);
    if(isEmpty){
      last = newNode;
    }else{
      first?.previous = newNode;
    }

  }

}