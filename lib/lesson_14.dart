import 'dart:io';

void main() {
  // написал функции для запроса первого числа   в консоль
  stdout.write('Введите первое число:');
  String? input1 = stdin.readLineSync();

  //Создаем функции для запроса операторов
  stdout.write('Введите выбраный оператор: ( +, -, *, / ):');
  String? operator = stdin.readLineSync();

  //Создаем за функции запроса второго числа в консоль
  stdout.write('Введите второе число:');
  String? input2 = stdin.readLineSync();

  //Превращаем все запрошенные строки в числа
  double? number1 = double.tryParse(input1 ?? '');
  double? number2 = double.tryParse(input2 ?? '');

  // Проверяем программу на коректность с помощью условной конструкции
  if (number1 == null || number2 == null) {
    print('Введите коректное число');
    return;
  }
  // віполнение операции в зависимости от вібраного оператора
  double? result;
  switch (operator) {
    case '+':
      if (number2 != 0) {
        result = number1 + number2;
      }
      break;
    case '-':
      break;
    case '*':
      break;
    case '/':
      if (number2 != 0) {
        result = number1 / number2;
      } else {
        print('ошибка деление на ноль');
        break;
      }
      break;
    default:
      print('Ошибка некоректный оператор');
      break;
  }
  print('результат $result');
}
