import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveler/controller/onboarding_controller.dart';
import 'package:traveler/data/data_source/static/static.dart';

class ImageAndText extends GetView<OnBoardingControllerImp> {
  const ImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    double highScreen = MediaQuery.of(context).size.height;
    return PageView.builder(
        controller: controller.pagecontroller,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(
                onBoardingList[index].urlImage,
                height: highScreen * 0.66,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: highScreen * 0.34,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        onBoardingList[index].title,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        onBoardingList[index].body,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }
}
