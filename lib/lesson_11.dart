
///ПОСЛЕ ТОГО, КАК НАПИСАЛ КАКОЙ-ТО ФРАГМЕНТ КОДА, ТО ВРЕМЯ ОТ ВРЕМЕНИ
///НАЖИМА КОМБИНАЦИЯ КЛАВИШ Ctrl + Alt + L
///Эта комбинация форматирует код, чтобы красивее выглядело

//Конструктор
class Rabotnik {
  final String name;
  final List<int> zp;

  Rabotnik({required this.name, required this.zp}) {
    // print('Создан');
    int result = 0;
    for (var i = 0; i < zp.length; i++) {
      result = zp[i] + result;
    }
    print(result / zp.length); // УЗНАЛ СРЕДНЮЮ ЗП РАБОТНИКА
  }
}

void main() {
  var ivan = Rabotnik(name: 'Ivan', zp: [45000, 38000, 47000]);
  var petr = Rabotnik(name: 'Petr', zp: [31000, 28000, 45000]);
}
