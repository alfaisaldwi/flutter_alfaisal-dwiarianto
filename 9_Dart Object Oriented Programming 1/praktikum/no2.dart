class Hewan {
  List<int> berat = [20, 10, 5];
  List nama = ['Sapi', 'Kambing', 'Ayam'];
}

class Mobil {
  int muatan = 40;
  List hewan = [];

  void totalMuatan() {
    var h1 = Hewan();
    var sum = 0;
    var tampilberat = (h1.berat);
    tampilberat.forEach((e) => sum += e);
    print('Kapasitas Maksimal Muatannya adalah $muatan kg');
    print('Berat Total Muatannya adalah ${sum} kg');
  }
}

void main() {
  var h1 = Hewan();
  var h2 = Mobil();
  var sum = 0;
  var tampilberat = (h1.berat);
  tampilberat.forEach((e) => sum += e);
  var total = Mobil().totalMuatan();

  if (h2.muatan > sum) {
    h2.hewan.add(h1.nama);
    print('List nama Hewan =  ${h2.hewan}');
  } else {
    print('Muatan Tidak Cukup');
  }
}
