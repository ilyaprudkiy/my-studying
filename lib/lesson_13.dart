<<<<<<< HEAD
//Наследование-Extends
class Sotrudnik{
  String fio;
  int age;
  String pasport;
  Sotrudnik( this.fio,this.age,this.pasport);
  fioIpasport(){
 return   fio+pasport;
}
}
class Director extends Sotrudnik{
Director(super.fio,super.age,super.pasport);
}


void main(){
  var dir=Director('Ivan Ivanov:', 56, '2344 12345 2144');
  print(dir.fioIpasport());
=======
import 'dart:io'; // библиотека

void main() { // пишем функции для запроса строки
  stdout.write('введите температуру в гшрадусах цельсия:');
  String? celsiusInput = stdin.readLineSync();
  // Превращаем введенную строку в консоль в число дабл
  double? celsius = double.tryParse(celsiusInput ?? '');
  // проверяем нашу програму на ошибки
  if (celsius == null) {
    print('Введите коректное значение ');
    return;
  }
  // производим вычисление из градусов цельсия в фарингейты
  double farinheit = (celsius * 9 / 5) + 32;
  // Выводим результат
  print('$farinheit');
>>>>>>> origin/master
}