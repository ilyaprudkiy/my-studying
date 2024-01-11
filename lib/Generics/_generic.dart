class Calculator {

  static int multiply(int a, int b) {
    return a * b;
  }

  static int subtract(int a, int b) {
    return a - b;
  }

  static dynamic add(var c) {
    return c++;
  }
}

void main() {
  int result = Calculator.subtract(22, 10);
  print(result);

  int newValue = Calculator.add(4);
  print(newValue);

  int sum = Calculator.multiply(4, 5);
  print(sum);
}