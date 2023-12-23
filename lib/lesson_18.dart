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

void main () {
  List<int> num = [22,33,12,55,11,60,8,900];

  int max = poiskMax (num);
  print('$max');

  int min = poiskMin(num);
  print('$min');

}

int poiskMax (List<int> num){
  if(num.isEmpty) {
    throw ArgumentError('Массив не должен быть пустым');
  }
  int max = num [0];
  for(int i = 1; i < num.length; i++) {
    if (num[i] > max) {
      max = num[i];
    }
  }
    return max;
  }

  int poiskMin (List<int> num) {
  if(num.isEmpty) {
    throw ArgumentError('Mассив  не должен быть пустым');
  }
  int min = num[0];
  for(int i = 0; i < num.length; i++) {
    if (num[i] < min) {
      min = num[i];
    }
  }
  return min;

  }


