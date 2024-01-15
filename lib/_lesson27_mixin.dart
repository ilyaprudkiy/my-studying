mixin calculateArea {
  area(double width, heigth) {
    return heigth * width;
  }
}
mixin calculatePerimetr {
  perimetr(int side1, side2, side3, side4) {
    return side1 + side2 + side3 + side4;
  }
}

class Circle with calculateArea {
  double heigth;
  double width;

  Circle(this.heigth, this.width);
}

class Rectangle with calculatePerimetr {
  int side1;
  int side2;
  int side3;
  int side4;

  Rectangle(this.side1, this.side2, this.side3, this.side4);
}

void main() {
  var circle = Circle(22, 10);
  var rectangle = Rectangle(5, 10, 5, 10);

  print(circle.area(22, 10));
  print(rectangle.perimetr(5, 10, 5, 10));
}
