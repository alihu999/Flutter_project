import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/onboarding_controller.dart';
import '../../core/constant/color.dart';
import 'widget/image_and_text.dart';
import 'widget/indecator_container.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingControllerImp controller = Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: const Stack(
        children: [InadecatorContainer(), ImageAndText()],
      ),
      floatingActionButton: IconButton(
          iconSize: 50,
          color: AppColor.secondColor,
          icon: const Icon(Icons.arrow_circle_right_outlined),
          onPressed: () {
            controller.next();
          }),
    );
  }
}
