class Stek<T> {
  List<T> _element = [];

  void push(T element) {
    return _element.add(element);
  }

  T pop() {
    if (_element.isEmpty) {
      throw StateError('Stek is empty');
    } else {
      T newList = _element.removeLast();
      return newList;
    }
  }

  int get size => _element.length;

  bool get isEmpty => _element.isEmpty;
}

void main() {
  var stek = Stek<int>();

  print(stek.isEmpty);

  stek.push(12);
  stek.push(122);
  stek.push(-33);
  stek.push(0);
  print(stek.size);

  print(stek.pop());
  print(stek.pop());
  print(stek.pop());
  print(stek.pop());
  print(stek.isEmpty);
}