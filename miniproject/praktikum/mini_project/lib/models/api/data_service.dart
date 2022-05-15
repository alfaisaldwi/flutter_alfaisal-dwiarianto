import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mini_project/models/weather_location.dart';

class DataService {
  Future<WeatherLocation> fetchData(String? location) async {
    try {
      final uri = Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=99b754ca70cb975876d5beb6698b0995&units=metric');
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        print(WeatherLocation.fromJson(body).cityName);
        return WeatherLocation.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed load data');
      }
    } catch (e) {
      throw Exception('Failed load data');
    }
  }
}
