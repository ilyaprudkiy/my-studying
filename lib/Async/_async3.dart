// Задача 1: Асинхронность и таймер
Future<void> delayAndPrint() async {
  await Future.delayed(Duration(seconds: 5));
  print('5 SECONDS HAVE PASSED');
}

void main() async {
  print('Start');
  await delayAndPrint();
  print('End');
}