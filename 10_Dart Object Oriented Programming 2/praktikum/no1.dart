class bangunRuang {
  int panjang = 30;
  int lebar = 15;
  int tinggi = 20;

  void volume() {}
}

class Kubus extends bangunRuang {
  int sisi = 5;

  @override
  void volume() {
    int volume = sisi * 4;
    print('Volume Kubus nya adalah $volume cm');
  }
}

class Balok extends bangunRuang {
  @override
  volume() {
    int volume = (panjang * lebar * tinggi);
    print('Volume Balok nya adalah $volume cm');
  }
}

void main() {
  var h1 = Balok();
  h1.volume();

  var k1 = Kubus();
  k1.volume();
}
