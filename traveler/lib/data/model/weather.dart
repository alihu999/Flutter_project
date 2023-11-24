class Weather {
  late String cityName;
  late String icon;
  late String conditions;
  late double temp;
  late double windkph;
  late String winddir;
  late int humidity;
  Weather({
    required this.cityName,
    required this.icon,
    required this.conditions,
    required this.temp,
    required this.windkph,
    required this.winddir,
    required this.humidity,
  });
  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["location"]["name"];
    icon = json["current"]["condition"]["icon"];
    conditions = json["current"]["condition"]["text"];
    temp = json["current"]["temp_c"];
    windkph = json["current"]["wind_kph"];
    winddir = json["current"]["wind_dir"];
    humidity = json["current"]["humidity"];
  }
}
