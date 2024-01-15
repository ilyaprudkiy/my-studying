// void main() {
//   List<int> numbers = [22,11,13,14];
//
//
//   double sredZn = chet(numbers);
//   print('$sredZn');
// }
// double chet(List <int> numbers) {
//   double sredZn = 0;
//   double sum = 0;
//   for(int i = 0; i < numbers.length; i++) {
//     sum += numbers[i];
//     sredZn = sum / numbers.length;
//   }
//   return sredZn;
// }
// void main () {
//   String stroka = 'Hello';
//
//   List<String> newString = massiwString(stroka);
//   print('$newString');
// }
// List<String> massiwString(String stroka) {
//   List<String> newString = stroka.split('');
//   return  newString;
// }
//}

// import 'dart:io';
//
// void main() {
//   stdout.write('Введите превую сторону триугольника:');
//   int side1 = int.parse(stdin.readLineSync()!);
//
//   stdout.write('Введите вторую сторону триугольника');
//   int side2 = int.parse(stdin.readLineSync()!);
//
//   stdout.write('Введите третью сторону триугольника');
//   int side3 = int.parse(stdin.readLineSync()!);
//
//   if (side1 == side3 && side1 != side2) {
//     print('Этот треугольник равнобедренный');
//   } else if (side1 == side2 && side1 == side3) {
//     print('Это треугольника равносторонний');
//   } else {
//     print('Этот треугольник разносторонний');
//   }
// }
