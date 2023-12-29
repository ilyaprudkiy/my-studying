// class BankAccount {
//   int _balance;
//
//
//   int get balance {
//     return _balance;
//   }
//
//   set balance(int newBalance) {
//     if (newBalance >= 0) {
//       _balance = newBalance;
//     } else {
//       print('Ошибка: баланс не может быть отрицательным');
//     }
//   }
//
//   BankAccount(int initialBalance) : _balance = initialBalance {
//     initializeBalance(initialBalance);
//   }
//   void initializeBalance(int initialBalance) {
//     balance = initialBalance;
//   }
// }
//
//
//
// void main(){
//   var account = BankAccount(100);
//   account.balance=120;
//   account.balance=200;
//   print('Баланс счета: ${account.balance}');
// }
class Rectangle {
  int width;
  int height;
  int side1;
  int side2;
  int side3;


  Rectangle(
    this.width,
    this.height,
    this.side1,
    this.side2,
    this.side3,

  );

   get info {
    print(width);
    print(height);
  }

set side4(value) {

}

  int Show() {
    return height * width;
  }

  int showPerimetr() {
    return side1 + side2 + side3;
  }

}

void main() {
  var a = Rectangle(20, 40, 10, 4, 10 );
  print(a.showPerimetr());
  print(a.Show());
  a.info;
  a.side4 = 42;
}
