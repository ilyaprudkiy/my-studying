import 'dart:io';

void main() {
  // задача на смену значения переменной без создания побочных переменных
  int a = 20;
  int b = 30;

  print("Изначальное значение");
  print('a = $a');
  print('b = $b');

  a = a +
      b; // меняем значения у переменных без использования третьей переменной
  b = a - b;
  a = a - b;

  print('Новое значение');
  print('a = $a');
  print('b = $b');
  //здача на вычисление площади
  int length = 15;
  int width = 7;
  int square = length * width;
  print('$square');
  // создаем  запрос имени у пользователя и выводим приветствие
  stdout.write('Введите своё имя:');
  String? userName = stdin.readLineSync();

  print('Приветствуем тебя $userName , добро пожаловать');

  //Расчет среднего значения
  double number1 = 15000;
  double number2 = 10000;
  double number3 = 30000;
  double number4 = 20000;
  // средняя зп рабочего
  double sum = (number1 + number2 + number3 + number4) / 4;
  print('Зп рабочего за 4 месяца: $number1, $number2, $number3,$number4');
  print('Средняя зп за 4 месяца: $sum');

  //Конвертация температуры здесь выбило ошибку если что подкоректируй
  stdout.write('Введите значения градусов цельсия:');
  double input = double.parse(stdin.readLineSync()!);

  //преоброзование градусов цельсия в фарингейт
  double farinheitTemperature = (input * 9 / 5) + 32;
  print('температура градусов цельсия $input , равна $farinheitTemperature');
  // Выводим сумму двух чисел
  stdout.write("Введите первое число: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Введите второе число: ");
  double num2 = double.parse(stdin.readLineSync()!);

  // Вычисление и вывод суммы
  double sum3 = num1 + num2;
  print("Сумма чисел $num1 и $num2 равна $sum3.");
}
