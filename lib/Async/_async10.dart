import 'dart:async';

void main() {
  scheduleHourlyMessage();
}

void scheduleHourlyMessage() {
  // внутри функции создаем переодический таймер
  Timer.periodic(const Duration(seconds: 10), (Timer timer) {
    DateTime currentTime = DateTime.now(); // получаем текущее время
    // форматируем время в строку для вывода
    String formatedTime = currentTime.toLocal().toString();

    print('Выводим сообщение каждые 10 секунд:$formatedTime ');
  });
}
