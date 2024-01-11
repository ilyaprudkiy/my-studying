class Shape {
  double widht;
  double height;

  Shape(this.widht, this.height);
}

class Rectangle extends Shape {
  double side1;
  double side2;
  double side3;
  double side4;

  Rectangle(double widht, double height, this.side1, this.side2, this.side3,
      this.side4)
      : super(widht, height);

  double calculatePerimeter() {
    return side1 + side2 + side3 + side4;
  }

  double calculateS() {
    return height * widht;
  }
}

class Circle extends Shape {
  double radius;

  Circle(double width, double heigth, this.radius) : super(width, heigth);

  double calculateSquare() {
    return 3.14 * radius * radius;
  }

  double calculateCirclePerimetr() {
    return 2 * 3.14 * radius;
  }
}

void main() {
  var rectangle = Rectangle(10, 20, 5, 10, 5, 10);
  var circle = Circle(10, 20, 10);

  print(rectangle.calculatePerimeter());
  print(rectangle.calculateS());
  print(circle.calculateCirclePerimetr());
  print(circle.calculateSquare());
}
