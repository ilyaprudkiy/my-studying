//геттеры и сеттеры

class Rabotnik {
  String name;
  List<int> zp;

  Rabotnik(this.name, this.zp);

  double get sreedZp {
    var rezultat = 0;
    for (var i = 0; i < zp.length; i++) {
      rezultat = rezultat + zp[i];
    }
    return rezultat / zp.length;
  }

  set dopOplata(value) {
    zp.add(value);
  }
}

void main() {
  var ivan = Rabotnik('Ivan', [23000, 27000, 43000]);
  var petr = Rabotnik('Petr', [27000, 33000, 47000]);
  print(ivan.zp);
  ivan.dopOplata = 7500;
  print(ivan.zp);
}
