import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadAndSaveFile(String url, String localPutch) async {
  try {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // Сохраняем скачанный файл локально
      File file = File(localPutch);
      await file.writeAsBytes(response.bodyBytes);
      print('Скачан успешно и сохронен в $localPutch');
    } else {
      print('Произошла ошибка статут файла: ${response.statusCode}');
    }
  } catch (e) {
    print('Ошибка:$e');
  }
}

void main() async {
  String url = 'https://example.com/sample-file.txt';
  String localFilePath = 'local_file.txt';
  await downloadAndSaveFile(url, localFilePath);
}
