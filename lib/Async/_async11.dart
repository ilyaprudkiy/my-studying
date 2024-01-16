import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:io';

Future<void> donolaudFile(String url1, String localPutch) async {
  var response = await http.get(Uri.parse(url1));
  try {
    if (response.statusCode == 200) {
      File file = File(localPutch);
      await file.writeAsBytes(response.bodyBytes);
      print(
          'Загрузка и сохранение файла произошла успешно сохронен в:$localPutch ');
    } else {
      print('Произошла ошибка статуc кода:${response.statusCode}');
    }
  } catch (e) {
    print('Произошла ошибка:$e');
  }
}

Future<void> fetchData() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/2');

  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print('Загрузка произошла успешно:');
      print(response.body);
    } else {
      print('произошла ошибка статус кода: ${response.statusCode}');
    }
  } catch (e) {
    print('Произошла ошибка:$e');
  }
}

Future<void> main() async {
  try {
    String url1 = 'https://example.com/sample-file.txt';
    String localPutch = 'local_file.txt';
    await donolaudFile(url1, localPutch);

    print('Start');
    await fetchData();

    var file = File('example.txt');
    var content = await file.readAsString();
    print('$content');
  } catch (e) {
    print('ошибка: $e');
  }
  print('End');
}
