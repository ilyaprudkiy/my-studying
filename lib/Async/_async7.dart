import 'dart:io';

Future<void> main() async {
  stdout.write('Напишите какой сегодня день:');
  String? string = await stdin.readLineSync();
  if(string != null && string.isNotEmpty) {
    print('Сегодня:$string');
  }else {
    print('День не был введен');
  }
  print('End');
}