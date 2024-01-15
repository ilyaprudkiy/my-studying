class Person {
  static int  counter = 0;

  Person(){
    counter++;
  }
}

void main() {
  var person1 = Person();
  var person2 = Person();
  print(Person.counter);
}
