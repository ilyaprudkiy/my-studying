mixin info {
  String get name;

  String get massege;

  String log() {
    return '[$name] : [$massege]';
  }
}

class User with info {
  String name;
  String massege;

  User(this.name, this.massege);
}

void main() {
  var user = User('Ilya', 'A good day');

  print(user.log());
}
