// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class WeatherLocation {
  final String? cityName;
  final String? main;
  final dynamic? temp;
  final String? country;
  final dynamic? description;
  final String? icon;
  final double? wind;
  final int? humidity;
  final double? feels_like;
  final int? pressure;

  WeatherLocation(
      {this.cityName,
      this.main,
      this.temp,
      this.country,
      this.description,
      this.icon,
      this.wind,
      this.humidity,
      this.feels_like,
      this.pressure});

  factory WeatherLocation.fromJson(Map<String, dynamic> json) {
    return WeatherLocation(
        cityName: json['name'] ?? '',
        main: json['weather'][0]['main'],
        temp: json['main']['temp'],
        country: json['sys']['country'],
        description: json['weather'][0]['description'],
        icon: json['weather'][0]['icon'],
        wind: json["wind"]["speed"],
        pressure: json["main"]["pressure"],
        humidity: json["main"]["humidity"],
        feels_like: json["main"]["feels_like"]);
  }
}
