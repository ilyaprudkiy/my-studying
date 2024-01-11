class Triangle {
  double _base;
  double _heigth;

  Triangle(this._base, this._heigth);

  double get base {
    return _base;
  }

  set setbase(double value) {
    if (value >= 0) {
      _base = value;
    } else {
      print('Error');
    }
  }

  double get height {
    return _heigth;
  }

  set setheight(double value) {
    if (value >= 0) {
      _heigth = value;
    } else {
      print('Error');
    }
  }
}

void main() {
  var triangle = Triangle(10, 0);

  print(triangle.base);
  triangle.setbase = 5;
  print(triangle.base);

  print(triangle.height);
  triangle.setheight = 10;
  print(triangle.height);
}
