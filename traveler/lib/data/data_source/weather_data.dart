import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/weather.dart';

Future<Weather> getData(String url) async {
  var uriCall = Uri.parse(url);

  var response = await http.get(uriCall);
  var body = jsonDecode(response.body);
  return Weather.fromJson(body);
}
