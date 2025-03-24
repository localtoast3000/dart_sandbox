import "./linked_list_node.dart";

class LinkedList<T> {
  int _length = 0;
  LinkedListNode<T>? _head;

  int get length => _length;

  void push(T data) {
    final newNode = LinkedListNode(_length, data, null);
    LinkedListNode? currentNode = _head;

    if (_head == null) {
      _head = newNode;
      _incrementLength();
      return;
    }

    while (currentNode != null) {
      if (currentNode.next == null) {
        currentNode.next = newNode;
        _incrementLength();
        break;
      }
      currentNode = currentNode.next;
    }
  }

  LinkedListNode? pop() {
    if (_head == null) {
      _decrementLength();
      return null;
    }
    if (_head?.next == null) {
      final poppedHead = _head;
      _head = null;
      _decrementLength();
      return poppedHead;
    }

    LinkedListNode? previousNode = _head;
    LinkedListNode? currentNode = _head;

    while (currentNode != null) {
      if (currentNode.next == null) {
        final poppedNode = currentNode;
        previousNode?.next = null;
        _decrementLength();
        return poppedNode;
      }
      previousNode = currentNode;
      currentNode = currentNode.next;
    }
    return null;
  }

  void traverse(bool? Function(LinkedListReadOnlyNode<T>) cb) {
    LinkedListNode? currentNode = _head;
    while (currentNode != null) {
      final breaker =
          cb(LinkedListReadOnlyNode(currentNode.idx, currentNode.data));
      currentNode = currentNode.next;

      if (breaker == true) {
        break;
      }
    }
  }

  void _incrementLength() {
    _length += 1;
  }

  void _decrementLength() {
    if (_length != 0) {
      _length -= 1;
    }
  }

  @override
  String toString() {
    if (_head == null) {
      return _head.toString();
    }

    final buffer = StringBuffer();
    buffer.writeln("{");

    traverse((node) {
      buffer.writeln("  ${node.idx}: ${node.data},");
      return null;
    });

    buffer.writeln("}");

    return buffer.toString();
  }
}
