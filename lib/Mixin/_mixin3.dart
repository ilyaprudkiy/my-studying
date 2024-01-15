mixin toLoverCase {
  String lovercase(String string) {
    return string.toLowerCase();
  }
}

mixin toUpperCase {
  String uppercase(String str) {
    return str.toUpperCase();
  }
}

class Student with toUpperCase {
  String name;
  String lastName;

  Student(this.name, this.lastName);
}

void main() {
  var student = Student('Ivan', 'Pavlov');

  print(student.uppercase(student.name));
}
