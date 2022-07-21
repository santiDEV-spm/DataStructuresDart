abstract class MyQueue<E>{
  //Insert an element at back of the queue, return true if was successful
  bool enqueue(E element);
  //Remove the element at the front of queue and return it.
  E? dequeue();
  // check if the queue is empty
  bool get isEmpty;
  //retunr the elemento at the front of the queue without removing it.
  E? get peek;
}