import 'dart:io';

Future<void> main() async {
  stdout.write('Напишите какой сегодня день:');
  String? string = stdin.readLineSync(); //Тут не надо await, потому что функция выполняется синхронно, а не асинхронно
  if (string != null && string.isNotEmpty) {
    print('Сегодня:$string');
  } else {
    print('День не был введен');
  }
  print('End');
}
