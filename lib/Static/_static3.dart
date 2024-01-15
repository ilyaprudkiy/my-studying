class Container<T extends Comparable<T>> {
  List<T> myList = [];

  void addElement(T element) {
    myList.add(element);
  }

  T getMaxElement() {
    if (myList.isEmpty) {
      throw StateError('Error: the container is empty');
    }

    T maxElement = myList[0];
    for (int i = 1; i < myList.length; i++) {
      if (myList[i].compareTo(maxElement) > 0) {
        maxElement = myList[i];
      }
    }

    return maxElement;
  }
}

void main() {
  var container = Container<num>();

  container.addElement(10);
  container.addElement(5);
  container.addElement(8);

  print(container.getMaxElement()); // Output should be 10
}