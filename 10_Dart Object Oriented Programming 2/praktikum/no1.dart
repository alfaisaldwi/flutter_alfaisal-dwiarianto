class bangunRuang {
  var panjang;
  var lebar;
  var tinggi;

  void volume() {}
}

class Kubus extends bangunRuang {
  var sisi;

  @override
  void volume() {
    var volumeKubus = sisi * 4;
    print('Volume Kubus nya adalah $volumeKubus cm');
  }
}

class Balok extends bangunRuang {
  @override
  volume() {
    int volumeBalok = panjang * lebar * tinggi;
    print('Volume Balok nya adalah $volumeBalok cm');
  }
}

void main() {
  var h1 = Balok();
  h1.panjang = 10;
  h1.lebar = 5;
  h1.tinggi = 15;
  h1.volume();

  var k1 = Kubus();
  k1.sisi = 4;
  k1.volume();
}
