class Hewan {
  List<int> berat = [20, 10, 5];
  List nama = ['Sapi', 'Kambing', 'Ayam'];
}

class Mobil {
  int kapasitas = 100;
  List muatan = [];

  tambahMuatan() {
    var h1 = Hewan();
    var h2 = Mobil();
    var sum = 0;
    var tampilberat = (h1.berat);
    tampilberat.forEach((e) => sum += e);
    var sisa = h2.kapasitas - sum;


    if (sum < h2.kapasitas) {
      h2.muatan.add(h1.nama);

      print('Nama hewan ${h2.muatan}');
    } else {
      print('Muatan Tidak Cukup');
    }
  }

  totalMuatan() {
    var h1 = Hewan();
    var h2 = Mobil();
    var sum = 0;
    var tampilberat = (h1.berat);
    tampilberat.forEach((e) => sum += e);
    var sisa = h2.kapasitas - sum;

    print('Berat Total Hewannya adalah $sum kg dengan sisa kapasitas $sisa kg');
  } 
}

void main() {
  var tampil = Mobil();
  tampil.tambahMuatan();
  tampil.totalMuatan();
}
