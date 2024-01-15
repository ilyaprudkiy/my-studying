import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:io';

Future<void> fetchData() async {
  await Future.delayed(Duration(seconds: 3));
  final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/2');

  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print('Загрузка  произошла успешно:');
      print(response.body);
    } else {
      print('Произошла ошибка: ${response.statusCode}');
    }
  } catch (e) {
    print('Произошла ошибка: $e');
  }
}

Future<void> main() async {
  print('Start');
  await fetchData();

  stdout.write('Введите ваше имя:');
  String? name = await stdin.readLineSync();
  if(name != null){
  print('Привет,$name');
  } else {
    print('Имя не было введено.');
  }

  try {
    var file = File('example.txt');
    var content = await file.readAsString();
    print('Содержимое файла: $content');
  } catch (e) {
    print('Произошла ошибка в четнии файла: $e');
  }
  print('End');
}

