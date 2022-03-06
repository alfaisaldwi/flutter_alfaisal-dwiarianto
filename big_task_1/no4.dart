import 'dart:io';

void main() {
  print("Masukan Jumlah Angka : ");
  int jumlah = int.parse(stdin.readLineSync()!);
  diagonalAngka(jumlah);
}

diagonalAngka(int n) {
  int angka = 1;

  for (var i = 0; i < n; i++) {
    for (var j = 0; j <= i; j++) {
      stdout.write(' ');
    }
    for (var i = 0; i < angka; i++) {
      stdout.write(angka);
    }
    stdout.writeln('');
  }
}
