
import 'dart:async';
import 'package:http/http.dart' as http;

Future<void> fetchData(String url) async {
  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      print('Запрос к $url выполнен успешно:');
      print(response.body);
    } else {
      print(
          'Ошибка при выполнении запроса к $url. Код состояния: ${response.statusCode}');
    }
  } catch (e) {
    print('Произошла ошибка при выполнении запроса к $url: $e');
  }
}

void main() async {
  print('Start');
  await Future.wait([
    fetchData('https://jsonplaceholder.typicode.com/todos/1'),
    fetchData('https://jsonplaceholder.typicode.com/posts/1'),
    fetchData('https://jsonplaceholder.typicode.com/comments/1'),
  ]);
  print('Параллельные запросы завершены.');
}
