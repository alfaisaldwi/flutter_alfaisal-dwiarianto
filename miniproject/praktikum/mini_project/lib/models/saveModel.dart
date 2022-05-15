class SaveModel {
  late int? id;
  late String cityName;

  SaveModel({
    this.id,
    required this.cityName,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cityName': cityName,
    };
  }

  SaveModel.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    cityName = map['cityName'];
  }
}
