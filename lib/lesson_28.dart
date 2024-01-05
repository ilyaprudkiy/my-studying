// class Int {
//   int number;
//
//   Int(this.number);
// }
//
// extension intEven on Int {
//   bool even() {
//     return number % 2 == 0;
//   }
// }
//
// void main() {
//   var int = Int(43);
//   print(int.even());
// }
// class NumList {
//   List<int> numbers;
//
//   NumList(this.numbers);
// }
//
// extension SumNumbers on NumList {
//   void sumElement() {
//     int sum = 0;
//     for (int i = 0; i < numbers.length; i++) {
//       sum += numbers[i];
//     }
//     print(sum);
//   }
// }
//
// void main() {
//   var list = NumList([12, 13, 21, 14]);
//   list.sumElement();
// }
