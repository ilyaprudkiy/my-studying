// import 'dart:io';
//
// void main() {
//   stdout.write('Введите первое число:');
//   double num1 = double.parse(stdin.readLineSync()!);
//
//   stdout.write('Введите второе число:');
//   double num2 = double.parse(stdin.readLineSync()!);
//
//   stdout.write('Введите оператор (+, -, *, /,): ' );
//   String operator = stdin.readLineSync()!;
//
//   double result = poiskResult(num1,num2,operator);
//   print('$result');
//
// }
//
// double poiskResult(double num1, double num2, String operator) {
//   switch(operator) {
//     case '+' :
//       return num1 + num2;
//     case '-':
//       return num1 - num2;
//     case '*':
//       return num1 * num2;
//     case '/':
//       if(num2 != 0) {
//         return num1 / num2;
//       }else{
//         print('Ошибка деление на ноль');
//         return double.nan;
//       }
//       default:
//         print('Ошибка не коректная операция');
//         // return double.nan;
//   }
// }

// import 'dart:io';
//
// void main() {
//   stdout.write('Введите оценку ученика (от 0 до 100):');
//   int grade = int.parse(stdin.readLineSync()!);
//
//   if (grade > 0 && grade <= 40) {
//     print('Удовлетворительно');
//   } else if (grade > 40 && grade <= 80) {
//     print('Хорошо');
//   } else if (grade > 80 && grade <= 100) {
//     print('Отлично');
//   } else {
//     print('не коректный ввод');
//   }
// }

