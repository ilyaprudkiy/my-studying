class MathUtils {
  static int multiplication(int a, int b) {
    return a * b;
  }

  static double division(double  a, double b) {
    if (a == 0) {
      throw StateError('Error null');
    } else {
      return a / b;
    }
  }

  static int subtraction(int a, int b) {
    return a - b;
  }

  static int addition(int a, int b) {
    return a + b;
  }
}

void main() {
  int result = MathUtils.addition(33, 33);
  print(result);
  double result1 = MathUtils.division(33,33 ) ;
  print(result1);
}