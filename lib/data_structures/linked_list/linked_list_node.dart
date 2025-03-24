class LinkedListNode<T> {
  int idx;
  T data;
  LinkedListNode? next;

  LinkedListNode(this.idx, this.data, this.next);

  @override
  String toString() {
    return "$idx: ${data.toString()}";
  }
}

class LinkedListReadOnlyNode<T> {
  final int idx;
  final T data;

  LinkedListReadOnlyNode(this.idx, this.data);

  @override
  String toString() {
    return "$idx: ${data.toString()}";
  }
}
