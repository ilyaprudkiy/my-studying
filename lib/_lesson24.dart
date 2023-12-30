class Person {
  String lastName;
  String firstName;

  Person(this.firstName, this.lastName);

  String get personInfo {
    return '$firstName $lastName';
  }
  void set infomyPerson(String value) {
    this.lastName = value;
  }
}
void main(){
  var person = Person('Ilya', 'Prudkiy');
  person.infomyPerson = 'Yusenkov';
  print(person.personInfo);
}

