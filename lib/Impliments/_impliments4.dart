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
  String start() {
    return 'Мотоцикл завелся';
  }

  @override
  String stop() {
    return 'Мотоцикл остановился';
  }
}

void main() {
  var car = Car(true, 120);
  var motorcycle = Motorcycle();

  car.start();
  car.stop();

  print(motorcycle.start());
  print(motorcycle.stop());
}
