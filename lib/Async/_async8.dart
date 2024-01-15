//Рандом и обработка ошибок
import 'dart:math';

Future<void> asyncFunctionWithError() async {
  int randomValue = Random().nextInt(2);
  await Future.delayed(Duration(seconds: 2));

  if(randomValue == 0) {
    print('Операция прошла успешно.');
  }else {
    throw Exception('Операция не была выполнена.');
  }
}

void main() async {
  try {
    await asyncFunctionWithError();
  } catch (e) {
    print('Произошла ошибка:$e');
  }
}

