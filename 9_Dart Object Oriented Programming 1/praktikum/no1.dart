class Hewan {
  int berat = 40;
  var nama = 'Kuda, Sapi';
}

class Mobil {
  int kapasitas = 100;
  List muatan = [];

  tambahMuatan() {
    var h1 = Hewan();
    var h2 = Mobil();

    if (h1.berat < h2.kapasitas) {
      h2.muatan.add(h1.nama);
      var tampilberat = h1.berat;
      var sisa = h2.kapasitas - h1.berat;

      print(
          'Berat hewannya adalah $tampilberat kg dengan sisa kapasitas $sisa');
      print('Jumlah hewan ${h2.muatan}');
    } else {
      print('Muatan Tidak Cukup');
    }
  }
}

void main() {
  var tampil = Mobil();
  tampil.tambahMuatan();
}
