import 'dart:async';

Future<void> mesagge() async {
  try {
    String string = 'Hello my frend';
    for (int i = 0; i < 100; i++) {
      await Future.delayed(Duration(seconds: 10));
      if (string.isNotEmpty) {
        print('$string');
      } else {
        print('Произошла ошибка');
      }
    }
  }catch (e){
      print('$e');
    }
  }


Future<void> main() async {
  await mesagge();
}
