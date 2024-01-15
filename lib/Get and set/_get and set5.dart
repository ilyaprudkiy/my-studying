class Rectangle {
  int width;
  int height;
  int side1;
  int side2;
  int side3;

  Rectangle(
      this.width,
      this.height,
      this.side1,
      this.side2,
      this.side3,
      );

  get info {
    print(width);
    print(height);
  }

  set side4(value) {}

  int show() {
    return height * width;
  }

  int showPerimetr() {
    return side1 + side2 + side3;
  }
}

void main() {
  var a = Rectangle(20, 40, 10, 4, 10);
  print(a.showPerimetr());
  print(a.show());
  a.info;
  a.side4 = 42;
}
