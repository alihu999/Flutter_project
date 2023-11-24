import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:traveler/controller/home_page_controller.dart';

import '../../../core/constant/color.dart';

class ContainerWeather extends GetView<HomePageControllerImp> {
  const ContainerWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 25, bottom: 25, left: 15, right: 15),
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: AppColor.thirdColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  offset: (Offset(4, 4)),
                  blurRadius: 8,
                  spreadRadius: 4)
            ]),
        child: FutureBuilder(
            future: controller.weather,
            builder: ((context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                    child: Text(
                  "Error",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ));
              } else if (snapshot.hasData) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              snapshot.data!.conditions,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                            Text("${snapshot.data!.temp.toInt()}°",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 40))
                          ],
                        ),
                        const VerticalDivider(
                          color: Colors.white,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.wind_power,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text("${snapshot.data!.windkph.toInt()} km/h",
                                    style:
                                        const TextStyle(color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.water_drop,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text("${snapshot.data!.humidity.toString()} %",
                                    style:
                                        const TextStyle(color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.date_range,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(DateFormat.MMMEd().format(DateTime.now()),
                                    style:
                                        const TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Image.network(
                      "https:${snapshot.data!.icon}",
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                );
              }
            })));
  }
}
