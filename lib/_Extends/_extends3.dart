class Dish {
  String type;

  Dish(this.type);

  cook() {
    print('Блюдо готовиться');
  }

  info() {
    print('тип блюда: $type');
  }
}

class Maincourse extends Dish {
  String name;
  String resept;
  List<String> ingridient;

  Maincourse(String type, this.resept, this.ingridient, this.name)
      : super(type);

  @override
  info() {
    super.info();
    print('Название блюда:$name');
    print('Рецепт: $resept');
    print('Ингридиенты: $ingridient');
  }
}

class Dessert extends Dish {
  String name;
  String resept;
  List<String> ingridient;
  int massa;

  Dessert(String type, this.resept, this.ingridient, this.name, this.massa)
      : super(type);

  @override
  info() {
    super.info();
    print('Масса блюда: $massa');
  }
}

void main() {
  var dessert = Dessert(
      'Dessert',
      'Отварите кортофель, заварите чай,залейте картофель чаем , добавьте сахар и пожарьте.',
      ['Patato' 'Sugar' 'Tea'],
      'Guacomole', 22);
  var maincourse = Maincourse(
      'MainCourse',
      'обжарить мясо,сделать соус из молока и пива, добавить специи',
      ['milk' 'bear' 'meat'],
      'Tipoeda');

  dessert.info();
  dessert.cook();
  maincourse.info();
  maincourse.cook();
}
