import 'dart:io';

fungsi(int a) {
  if (a > 180) {
    return a - 180;
  } else if (a < 180) {
    return a + 180;
  }
}

void main() {
  var hasil;
  print("Masukan Angka");
  int angka = int.parse(stdin.readLineSync()!);

  hasil = fungsi(angka);
  if (hasil == null) {
    hasil = 0;
  } else if (hasil >= 360) {
    hasil = 0;
  }

  print(hasil);
}
