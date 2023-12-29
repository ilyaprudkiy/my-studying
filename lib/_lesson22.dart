// class Book {
//   String author;
//   int year;
//   String name;
//
//   Book(this.author, this.year, this.name);
//
//   void shouwBook() {
//     print('$author');
//     print('$year');
//     print('$name');
//   }
// }
//
// void main() {
//   var myBook = Book('Rouling', 2003, 'Harry Potter');
//   myBook.shouwBook();
// }

// class Car {
//   String name;
//   int year;
//   String model;
//
//   Car(this.name,this.year,this.model);
//
//   void shouwCar() {
//     print('Марка: $name');
//     print('Год выпуска: $year');
//     print('Модель: $model');
//   }
// }
// void main () {
//   var myCar = Car('Hinday', 2009, 'hatchback');
//   myCar.shouwCar();
// }
// class Product {
//   // поля с переменными
//   String name;
//   double price;
//   double quantity;
//
//   //Конструктор
//   Product(this.name, this.price, this.quantity);
//
//   //метод общей стоимости
//   double totalCost() {
//     double result = 0;
//     result = quantity * price;
//     return result;
//   }
// }
//
// void main() {
//   var sugar = Product('Sugar', 55.90, 100);
//   print(sugar.totalCost());
// }
// class Animal {
//   String name;
//   String kind;
//   int age;
//
//   Animal(this.name, this.kind, this.age);
//
//   void sound() {
//     if (name == 'cat') {
//       print('Мяу');
//     } else if (name == 'dog') {
//       print('Гав');
//     } else if (name == 'pig') {
//       print('Хрю');
//     } else {
//       print('издает другие звуки');
//     }
//   }
// }
// void main(){
//   var animal = Animal('cat', 'ads', 1);
//   animal.sound();
// }