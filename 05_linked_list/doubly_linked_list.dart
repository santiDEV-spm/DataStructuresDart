
class Node<T>{
  Node({required this.value, this.previous, this.next});
  T value;
  Node<T>? next;
  Node<T>? previous;

  @override
  String toString() {
    return super.toString();
  }
}