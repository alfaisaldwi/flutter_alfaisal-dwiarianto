import 'dart:io';

void main() {
  print("Masukan Jumlah Bintang : ");
  int jumlah = int.parse(stdin.readLineSync()!);

  jamPasir(jumlah);
}

jamPasir(int n) {
  for (var a = 0; a <= n - 1; a++) {
    for (var b = 0; b < a; b++) {
      stdout.write(" ");
    }
    for (var c = a; c <= n - 1; c++) {
      stdout.write("*" + " ");
    }
    stdout.writeln("");
  }

  for (var a = n - 1; a >= 0; a--) {
    for (var b = 0; b < a; b++) {
      stdout.write(" ");
    }
    for (var c = a; c <= n - 1; c++) {
      stdout.write("*" + " ");
    }
    stdout.writeln("");
  }
}
