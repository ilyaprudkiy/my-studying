class BankAccount {
  int _balance;

  BankAccount(this._balance);

  int get balance {
    return _balance;
  }

  set balance(int value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print('Error');
    }
  }
}

void main() {
  var bankacount = BankAccount(100);

  print(bankacount._balance);
  bankacount.balance = 1000;
  print(bankacount._balance);
  bankacount.balance = -20;
}
