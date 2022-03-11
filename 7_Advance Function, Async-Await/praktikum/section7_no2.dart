void main() async {
  List<List> list = [
    ['Indonesia', 'Jakarta'],
    ['Vietnam', 'Hanoi'],
    ['Malaysia', 'Kuala Lumpur'],
    ['Kamboja', 'Phnom Penh']
  ];

  Map<String, String> listBaru = mapBaru(list);

  print('List Negara $list');
  print('===============================================');
  await Future.delayed(Duration(seconds: 1), () {
    print('Map Negara : $listBaru ');
  });
}

Map<String, String> mapBaru(List list) {
  final Map<String, String> hasil = {};

  for (var element in list) {
    if (element.length == 2) {
      hasil[element.first] = element.last;
    }
  }
  return hasil;
}
