class Person{
  String name;
  int age;

  Person(this.name, this.age);

  String personInfo(){
    return '$name $age';
  }
}
class Student extends Person{
  double point;
  String lastname;

  Student(String name, int age,this.point,this.lastname):super(name , age);


  @override
  String personInfo(){
    return 'name student: $name age student: $age  lastname student: $lastname point student: $point';
  }
  String positionInList(){
    if(point >=0 && point < 40){
      return 'Lol';
    }else if(point >= 40 && point < 60){
      return 'Normal';
    }else if(point >= 60 && point <= 100 ){
      return 'Power';
    }else{
      return 'Error';
    }
  }
}

class Teacher extends Person{
  String type;
  bool control;
  List<double> zp;
  Teacher(String name, int age,this.type, this.control, this.zp):super(name,age);

  @override
  String personInfo(){
    return'name person: $name age peson: $age type teacher: $type control : $control';
  }
  List moneyTeacher(){
    return zp;
  }

}

void main(){
  var teacher = Teacher('Ivan', 43, 'Matematch', true, [14000, 13000, 15000 ]);
  var student = Student('Petr', 21, 70, 'Pupcin');

  print(student.personInfo());
  print(student.positionInList());

  print(teacher.personInfo());
  print(teacher.moneyTeacher());
}