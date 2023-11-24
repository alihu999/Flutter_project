// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherData {
  Future<Weather> getData(var lat, var lon) async {
    var uriCall = Uri.parse(
        "http://api.weatherapi.com/v1/current.json?key=2bf0f46297f843e08fd170208220504&q=$lat,$lon&aqi=no");

    var response = await http.get(uriCall);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}

class Weather {
  var cityName;
  var region;
  var icon;
  var conditions;
  var temp;
  var windkph;
  var winddir;
  var humidity;
  Weather(
      {required this.cityName,
      required this.icon,
      required this.conditions,
      required this.temp,
      required this.windkph,
      required this.winddir,
      required this.humidity,
      required this.region});
  // ignore: non_constant_identifier_names
  Weather.fromJson(Map<String, dynamic> Json) {
    cityName = Json["location"]["name"];
    region = Json["location"]["region"];
    icon = Json["current"]["condition"]["icon"];
    conditions = Json["current"]["condition"]["text"];
    temp = Json["current"]["temp_c"];
    windkph = Json["current"]["wind_kph"];
    winddir = Json["current"]["wind_dir"];
    humidity = Json["current"]["humidity"];
  }
}
