// class Person {
//   String lastName;
//   String firstName;
//
//   Person(this.firstName, this.lastName);
//
//   String get personInfo {
//     return '$firstName $lastName';
//   }
//
//   set infomyPerson(String value) {
//     lastName = value;
//   }
// }
// void main(){
//   var person = Person('Ilya', 'Prudkiy');
//   person.infomyPerson = 'Yusenkov';
//   print(person.personInfo);
//
// class Shape {
//   double widht;
//   double height;
//
//   Shape(this.widht, this.height);
// }
//
// class Rectangle extends Shape {
//   double side1;
//   double side2;
//   double side3;
//   double side4;
//
//   Rectangle(double widht, double height, this.side1, this.side2, this.side3,
//       this.side4)
//       : super(widht, height);
//
//   double calculatePerimeter() {
//     return side1 + side2 + side3 + side4;
//   }
//
//   double calculateS() {
//     return height * widht;
//   }
// }
//
// class Circle extends Shape {
//   double radius;
//
//   Circle(double width, double heigth, this.radius) : super(width, heigth);
//
//   double calculateSquare() {
//     return 3.14 * radius * radius;
//   }
//
//   double calculateCirclePerimetr() {
//     return 2 * 3.14 * radius;
//   }
// }
//
// void main() {
//   var rectangle = Rectangle(10, 20, 5, 10, 5, 10);
//   var circle = Circle(10, 20, 10);
//
//   print(rectangle.calculatePerimeter());
//   print(rectangle.calculateS());
//   print(circle.calculateCirclePerimetr());
//   print(circle.calculateSquare());
// }
// class Product {
//   String name;
//   int point;
//
//   Product(this.name, this.point);
// }
//
// class Electronics extends Product {
//   String type;
//   int amount;
//
//   Electronics(String name, int point, this.type, this.amount)
//       : super(name, point);
//
//   String infoProduct() {
//     return ' name product : $name point product: $point type product: $type amount product: $amount';
//   }
// }
//
// class Clothing extends Product {
//   String collor;
//   String type;
//
//   Clothing(String name, int point, this.type, this.collor) : super(name, point);
//
//   String infoClothing() {
//     return 'product name: $name product point: $point type product: $type collor product: $collor';
//   }
// }
//
// void main() {
//   var electronics = Electronics('MacBook', 80000, 'Electronics', 100);
//   var clothing = Clothing('Jacket G&G', 3000, 'Clothing', 'Blo');
//
//   print(electronics.infoProduct());
//   print(clothing.infoClothing());
// }
// //
// class BankAccount {
//   int _balance;
//
//   BankAccount(this._balance);
//
//   int get balance {
//     return _balance;
//   }
//
//   set balance(int value) {
//     if (value >= 0) {
//       _balance = value;
//     } else {
//       print('Error');
//     }
//   }
// }
//
// void main() {
//   var bankacount = BankAccount(100);
//
//   print(bankacount._balance);
//   bankacount.balance = 1000;
//   print(bankacount._balance);
//   bankacount.balance = -20;
// }
// class Student {
//   double _gradePointAverage;
//
//   Student(this._gradePointAverage);
//
//   String get getGradePointDescription{
//     if(_gradePointAverage >= 0 && _gradePointAverage <= 40 ){
//       return 'Lol';
//     }else if(_gradePointAverage > 40 && _gradePointAverage <= 60){
//       return 'Normal';
//     }else if(_gradePointAverage > 60 && _gradePointAverage <= 80){
//       return 'Good';
//     }else if(_gradePointAverage > 80 && _gradePointAverage <= 100 ){
//       return 'Great';
//     }else{
//       return 'Error';
//     }
//   }
//
//   set gradePointAverage(double  value){
//    _gradePointAverage = value;
//   }
//
// }
//
// void main(){
//   var student = Student(0);
//   student.gradePointAverage = 80;
//   print(student._gradePointAverage);
//   print(student.getGradePointDescription);
// }
// class Triangle {
//   double _base;
//   double _heigth;
//
//   Triangle(this._base, this._heigth);
//
//   double get base {
//     return _base;
//   }
//
//   set setbase(double value) {
//     if (value >= 0) {
//       _base = value;
//     } else {
//       print('Error');
//     }
//   }
//
//   double get height {
//     return _heigth;
//   }
//
//   set setheight(double value) {
//     if (value >= 0) {
//       _heigth = value;
//     } else {
//       print('Error');
//     }
//   }
// }
//
// void main() {
//   var triangle = Triangle(10, 0);
//
//   print(triangle.base);
//   triangle.setbase = 5;
//   print(triangle.base);
//
//   print(triangle.height);
//   triangle.setheight = 10;
//   print(triangle.height);
// // }
// abstract class TemperatureConverter {
//   double temperatureConventerCelsius(double celsius);
//
//   double temperatureConventerFaringeit(double faringeit);
// }
//
// class SimpleTemperatureConventer implements TemperatureConverter {
//   @override
//   double temperatureConventerCelsius(double celsius) {
//     return (celsius * 9 / 5) + 32;
//   }
//
//   @override
//   double temperatureConventerFaringeit(double faringeit) {
//     return (faringeit - 32) * 5 / 9;
//   }
// }
//
// void main() {
//   var temperatureConventer = SimpleTemperatureConventer();
//
//   print(temperatureConventer.temperatureConventerCelsius(32));
//   print(temperatureConventer.temperatureConventerFaringeit(80));
// }

//
// abstract class ToDoList {
//   String infomyList();
//   void remove(String task);
//   void addTasks(String task);
// }
//
// class MyList implements ToDoList {
//   List<String> tasks = [];
//
//   MyList(this.tasks);
//
//   @override
//   String infomyList() {
//     if (tasks.isEmpty) {
//       return 'Список задач пуст.';
//     } else {
//       return 'Список задач:$tasks';
//     }
//   }
//
//   @override
//   void remove(String task) {
//     tasks.remove(task);
//   }
//
//   @override
//   void addTasks(String task) {
//     tasks.add(task);
//   }
// }
//
// void main() {
//   var toDoList = MyList([]);
//
//   toDoList.addTasks('Купить продукты');
//   toDoList.addTasks('Подготовить уроки');
//   toDoList.addTasks('Сделать зарядку');
//
//   print(toDoList.infomyList());
//
//   toDoList.remove('Подготовить уроки');
//
//   print(toDoList.infomyList());
// }
// mixin info{
//   String get name;
//   String get massege;
//
//   String log(){
//     return '[$name] : [$massege]';
//   }
// }
//
//
// class User with info{
//   String name;
//   String massege;
//
//   User(this.name,this.massege);
//
// }
//
// void main() {
//   var user = User('Ilya', 'A good day');
//
//   print(user.log());
// }





