abstract class Printtable {
  void info();
}

class Book implements Printtable {
  String author;
  String name;

  Book(this.author, this.name);

  @override
  String info() {
    return '$author , $name';
  }
}

void main(){
  var myBook = Book('J.K Rouling', 'Harry Potter');

  print(myBook.info());
}