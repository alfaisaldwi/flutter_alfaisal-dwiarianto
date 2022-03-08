class Hewan {
  int berat = 40;
  var nama = 'Kuda, Sapi';
}

class Mobil {
  int muatan = 60;
  List hewan = [];
}

void main() {
  var h1 = Hewan();
  var h2 = Mobil();

  if (h2.muatan > h1.berat) {
    h2.hewan.add(h1.nama);
    var tampilberat = h1.berat;

    print('Berat hewannya adalah $tampilberat kg');
    print(h2.hewan);
  } else {
    print('Muatan Tidak Cukup');
  }
}
