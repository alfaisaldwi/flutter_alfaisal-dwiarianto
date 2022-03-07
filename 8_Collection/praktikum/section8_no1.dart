Future<List> P1(List<int> listdata, int kali) async {
  var listbaru = [];
  int? hasil;
  for (var i = 0; i < listdata.length; i++) {
    await Future.delayed(Duration(seconds: 1), () {
      hasil = listdata[i] * kali;
      listbaru.add(hasil);
      print(listdata[i] * kali);
    });
  }
  return listbaru;
}

void main() async {
  var listdata = ([4, 2, 2, 3, 4]);
  print("Data awal $listdata");
  var listbaru = await P1(listdata, 3);
  print("Data baru $listbaru");
}
