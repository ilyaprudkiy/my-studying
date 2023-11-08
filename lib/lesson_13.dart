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
}