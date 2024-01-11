class Student {
  double _gradePointAverage;

  Student(this._gradePointAverage);

  String get getGradePointDescription {
    if (_gradePointAverage >= 0 && _gradePointAverage <= 40) {
      return 'Lol';
    } else if (_gradePointAverage > 40 && _gradePointAverage <= 60) {
      return 'Normal';
    } else if (_gradePointAverage > 60 && _gradePointAverage <= 80) {
      return 'Good';
    } else if (_gradePointAverage > 80 && _gradePointAverage <= 100) {
      return 'Great';
    } else {
      return 'Error';
    }
  }

  set gradePointAverage(double value) {
    _gradePointAverage = value;
  }
}

void main() {
  var student = Student(0);
  student.gradePointAverage = 80;
  print(student._gradePointAverage);
  print(student.getGradePointDescription);
}
