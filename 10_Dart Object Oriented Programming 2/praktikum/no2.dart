class Matematika {
  hasil() {}
}

class KelipatanPersekutuanTerkecil extends Matematika {
  var x;
  var y;

  @override
  hasil() {
    for (var i = x; i > 0; i--) {
      if (x % i == 0 && y % i == 0) {
        print(i);
        break;
      }
    }
  }
}

class FaktorPersekutuanTerbesar extends Matematika {
  var x;
  var y;

  @override
  hasil() {
    for (var i = x;; i++) {
      if (i % x == 0 && i % y == 0) {
        print(i);
        break;
      }
    }
  }
}

void main(List<String> args) {
  var k1 = KelipatanPersekutuanTerkecil();
  k1.x = 5;
  k1.y = 20;
  print("===== Kelipatan Persekutuan Terkecil =====");
  k1.hasil();

  var k2 = FaktorPersekutuanTerbesar();
  k2.x = 5;
  k2.y = 20;
  print("===== Faktor Persekutuan Terbesar =====");
  k2.hasil();
}
