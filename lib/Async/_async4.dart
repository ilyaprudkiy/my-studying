// Задача 2: Асинхронные HTTP-запросы
import 'dart:async';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/2');

  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print('Данные успешно загружены:');
      print(response.body);
    } else {
      print(
          'Ошибка при загрузке данных. Код состояния: ${response.statusCode}');
    }
  } catch (e) {
    print('Произошла ошибка: $e');
  }
}

void main() async {
  print('Start');
  await fetchData();
  print('Finish');
}
