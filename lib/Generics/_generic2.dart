class Container<T> {
  List<T> _element = [];

  void addElement(T element) {
    return _element.add(element);
  }

  T removeElement() {
    if (_element.isEmpty) {
      throw StateError('Container is empty');
    } else {
      T newList = _element.removeLast();
      return newList;
    }
  }

  int get size => _element.length;

  bool get isEmpty => _element.isEmpty;
}
void main() {
  var container = Container<String>();

  print(container.size);
  print(container.isEmpty);

  container.addElement('Petya');
  container.addElement('Vasya');
  container.addElement('Dima');
  container.addElement('Nina');

  print(container.isEmpty);
  print(container.size);

  print(container.removeElement());
  print(container.size);

}