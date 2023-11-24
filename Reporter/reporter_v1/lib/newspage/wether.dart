import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import '../getlocation.dart';
import '../weatherdata.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  var client = WeatherData();
  // ignore: prefer_typing_uninitialized_variables
  var wheatherData;

  @override
  void initState() {
    super.initState();
    getWeatherData();
  }

  Future getWeatherData() async {
    while (true) {
      var position = await getposition();
      if (await Geolocator.isLocationServiceEnabled()) {
        wheatherData =
            await client.getData(position.latitude, position.longitude);
        setState(() {});

        break;
      } else {
        await Geolocator.requestPermission();
        wheatherData =
            await client.getData(position.latitude, position.longitude);
        setState(() {});
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff2f4f6),
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color(0xff4A00E0), Color(0xff6b48ff)]),
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 129, 127, 127),
                      offset: Offset(0, 0),
                      blurRadius: 40)
                ]),
            height: 400,
            width: 500,
            child: (wheatherData?.cityName == null)
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                            Text(
                              "${wheatherData?.region} ${wheatherData?.cityName}",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                        Image.network(
                          "https:${wheatherData?.icon}",
                          height: 100,
                          width: 125,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "${wheatherData?.conditions}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          "${wheatherData?.temp.toInt()}°",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 40),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                const Icon(
                                  Icons.wind_power,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${wheatherData?.windkph}Kmph/${wheatherData?.winddir}",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(
                                  Icons.water_drop,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${wheatherData?.humidity}%",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            )
                          ],
                        )
                      ]),
          ),
        ));
  }
}
