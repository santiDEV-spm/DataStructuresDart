import 'queue_interface.dart';

class QueueList<E> implements MyQueue{
  final _list = <E>[];

  @override
  E? dequeue() => (isEmpty) ? null :_list.removeAt(0);

  @override
  bool enqueue(element) {
    _list.add(element);
    return true;
  }

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  E? get peek => (isEmpty) ? null : _list.first;

  @override
  String toString() => _list.toString();

}