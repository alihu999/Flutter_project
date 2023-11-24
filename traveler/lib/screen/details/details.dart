import 'package:flutter/material.dart';
import 'package:traveler/controller/home_page_controller.dart';
import 'package:traveler/core/constant/color.dart';
import 'package:get/get.dart';
import 'package:traveler/screen/widget/text_with_outline.dart';

import '../../data/data_source/static/static.dart';
import 'widget/container_weather.dart';

class Details extends GetView<HomePageControllerImp> {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: AppColor.secondColor,
          expandedHeight: 200,
          floating: true,
          pinned: true,
          title: TextWithOutLine(
            text: placeList[controller.placeIndex].title,
            size: 20,
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              placeList[controller.placeIndex].imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              const ContainerWeather(),
              Container(
                height: 200,
                color: AppColor.firstColor,
                margin: const EdgeInsets.all(25),
              ),
              Container(
                height: 200,
                color: AppColor.firstColor,
                margin: const EdgeInsets.all(25),
              ),
              Container(
                height: 200,
                color: AppColor.firstColor,
                margin: const EdgeInsets.all(25),
              ),
              Container(
                height: 200,
                color: AppColor.firstColor,
                margin: const EdgeInsets.all(25),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
