

void main() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print('Error: $e');
  }

  try {
    String? name = null;
    print(name!.length);
  } catch (e) {
    print('Error:$e');
  }

  try {
    String name = 'Ivan';
    int number = int.parse(name);
    print(number);
  } catch (e) {
    print('Error:$e');
  }

  try {
    List<int> number = [1, 23, 14];
    print(number[5]);
  } catch (e) {
    print('Error:$e');
  }
}
