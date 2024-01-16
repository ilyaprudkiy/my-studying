import 'dart:async';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  final url = Uri.parse('https://example.com/api/data');

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

  void main() {
    print('Загрузка данных начата');
    fetchData().then((_) => print('загрузка данных завершена'));
  }
}
