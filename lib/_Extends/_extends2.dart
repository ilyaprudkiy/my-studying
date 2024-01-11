class Product {
  String name;
  int point;

  Product(this.name, this.point);
}

class Electronics extends Product {
  String type;
  int amount;

  Electronics(String name, int point, this.type, this.amount)
      : super(name, point);

  String infoProduct() {
    return ' name product : $name point product: $point type product: $type amount product: $amount';
  }
}

class Clothing extends Product {
  String collor;
  String type;

  Clothing(String name, int point, this.type, this.collor) : super(name, point);

  String infoClothing() {
    return 'product name: $name product point: $point type product: $type collor product: $collor';
  }
}

void main() {
  var electronics = Electronics('MacBook', 80000, 'Electronics', 100);
  var clothing = Clothing('Jacket G&G', 3000, 'Clothing', 'Blo');

  print(electronics.infoProduct());
  print(clothing.infoClothing());
}
