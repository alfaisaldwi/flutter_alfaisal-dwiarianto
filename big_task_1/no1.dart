import 'dart:io';

fungsi(int a) {
  var hasil = a %= 2;
  if (hasil == 0) {
    return true;
  } else {
    return false;
  }
}

void main() {
  print("Masukan Angka");
  int angka = int.parse(stdin.readLineSync()!);

  var hasil = fungsi(angka);
  print(hasil);
}
