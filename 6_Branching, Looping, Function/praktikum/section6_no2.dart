import 'dart:io';

void main() {
  //Nilai Faktorial dari 10
  int faktorial1 = 1;
  int nilai1 = 10;

  for (var i = 1; i <= nilai1; i++) {
    faktorial1 *= i;
  }
  print("Nilai dari 10 Faktorial adalah $faktorial1");

//Nilai Faktorial dari 20
  int faktorial2 = 1;
  int nilai2 = 20;

  for (var i = 1; i <= nilai2; i++) {
    faktorial2 *= i;
  }
  print("Nilai dari 20 Faktorial adalah $faktorial2");

//Nilai Faktorial dari 10
  double faktorial3 = 1;
  int nilai3 = 30;

  for (var i = 1; i <= nilai3; i++) {
    faktorial3 *= i;
  }
  print("Nilai dari 30 Faktorial adalah " + faktorial3.toString());
}
