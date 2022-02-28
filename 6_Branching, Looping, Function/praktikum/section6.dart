import 'dart:io';
void main() {
  late String hasil;
  print('---------------------------');
  stdout.write("Nama Anda : ");
  var nama = stdin.readLineSync();
  stdout.write("Nilai Anda : ");
  int? nilai = int.parse(stdin.readLineSync()!);

  if (nilai > 70) {
    hasil = "A";
  } else if (nilai > 40) {
    hasil = "B";
  } else if (nilai > 0) {
    hasil = "C";
  } else {
    hasil = " ";
  }

  print('Nilai dari saudara/i $nama adalah $nilai, dengan predikat $hasil');
}
