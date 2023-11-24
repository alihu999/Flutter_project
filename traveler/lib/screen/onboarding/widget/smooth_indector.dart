import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/data_source/static/static.dart';

class SmoothIndector extends StatelessWidget {
  const SmoothIndector({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller) {
      return AnimatedSmoothIndicator(
        activeIndex: controller.currentIndex,
        count: onBoardingList.length,
        effect: ScaleEffect(
            scale: 2,
            dotHeight: 10,
            dotWidth: 10,
            spacing: 20,
            dotColor: AppColor.secondColor,
            activeDotColor: AppColor.secondColor,
            activePaintStyle: PaintingStyle.stroke),
      );
    });
  }
}
