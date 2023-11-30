import 'dart:io'; // библиотека

void main() { // пишем функции для запроса строки
  stdout.write('введите температуру в гшрадусах цельсия:');
  String? celsiusInput = stdin.readLineSync();
  // Превращаем введенную строку в консоль в число дабл
  double? celsius = double.tryParse(celsiusInput ?? '');
  // проверяем нашу програму на ошибки
  if (celsius == null) {
    print('Введите коректное значение ');
    return;
  }
  // производим вычисление из градусов цельсия в фарингейты
  double farinheit = (celsius * 9 / 5) + 32;
  // Выводим результат
  print('$farinheit');
}