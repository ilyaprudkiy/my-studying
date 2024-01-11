class User {
  static const int age = 18;
  static const String name = 'Ivan';
  static const String lastName = 'Pupkin';
  double salary;
  String post;

  User(this.salary, this.post);

  static String info() => 'name user:  $name  lastName: $lastName age: $age ';
}

void main() {
  var user = User(33.000, 'Director');

  print(User.info());
}