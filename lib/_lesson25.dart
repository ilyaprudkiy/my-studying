// abstract class Printtable {
//   void info();
// }
//
// class Book implements Printtable {
//   String author;
//   String name;
//
//   Book(this.author, this.name);
//
//   @override
//   String info() {
//     return '$author , $name';
//   }
// }
//
// void main(){
//   var myBook = Book('J.K Rouling', 'Harry Potter');
//
//   print(myBook.info());
// }
// abstract class Shape {
//   double calculatePerimetr();
//
//   double calculeteArea();
// }
//
// class Rectangle implements Shape {
//   double side1;
//   double side2;
//   double side3;
//   double side4;
//   double width;
//   double heigth;
//
//   Rectangle(this.side1, this.side2, this.side3, this.side4);
//
//   @override
//   double calculatePirimetr() {
//     return side1 + side2 + side3 + side4;
//   }
//
//   double calculateArea(){
//
//   }
// }
//
// class Circle implements Shape {
//   double radius;
//
//   Circle(this.radius);
//
//   @override
//   double calculateArea() {
//     return 3.14 * radius;
//   }
// }
abstract class Vehicle {
  void start();
  void stop();

}

class Car implements Vehicle {
  bool startCar;
  int speedCar;

  Car(this.startCar, this.speedCar);

  @override
  void start() {
    if (startCar == true) {
      print('Машина завелась');
    } else if (speedCar > 0 && speedCar <= 100) {
      print('Машина набирает скорость');
    } else {
      print('Машина не завелась, попробуйте ёще раз');
    }
  }

  @override
  void stop() {
    if (startCar == true) {
      print('Машина остановилась');
    } else if (speedCar > 100) {
      print('Машина остановилась , нарушение скростных ограничений');
    } else {
      print('Продолжаем движение');
    }
  }
}

class Motorcycle implements Vehicle {
  @override
  String start(){
    return 'Мотоцикл завелся';
  }
  @override
  String  stop(){
    return 'Мотоцикл остановился';
  }
}

void main(){
  var car = Car(true, 120);
  var motorcycle = Motorcycle();

  car.start();
  car.stop();

 print(motorcycle.start());
  print(motorcycle.stop());
}

