void main() {
  var list = [
    ['Indonesia', 'Jakarta'],
    ['Vietnam', 'Hanoi'],
    ['Malaysia', 'Kuala Lumpur'],
    ['Kamboja', 'Phnom Penh']
  ];

  for (var i = 0; i < list.length; i++) {
    var negara = [list[i].first];
    var kota = [list[i].last];
    // print(list[i].first);
    // print(list[i].last);

    Map<String, dynamic> hasil = {'$negara': kota};
    print(hasil);
  }
}
