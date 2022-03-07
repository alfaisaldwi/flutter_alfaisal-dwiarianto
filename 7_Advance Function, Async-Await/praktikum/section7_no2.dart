void main() async{
  List list = [
    ['Indonesia', 'Jakarta'],
    ['Vietnam', 'Hanoi'],
    ['Malaysia', 'Kuala Lumpur'],
    ['Kamboja', 'Phnom Penh']
  ];

  print('List Negara $list');
  print('Map Negara : ');
  for (var i = 0; i < list.length; i++) {
    var negara = [list[i].first];
    var kota = [list[i].last];

    Map<String, dynamic> hasil = {'$negara': kota};
    await Future.delayed(Duration(seconds: 1), (){
      print(hasil);
    }); 
  }
}