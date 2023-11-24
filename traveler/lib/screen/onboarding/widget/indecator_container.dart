import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveler/controller/onboarding_controller.dart';
import 'package:traveler/screen/onboarding/widget/smooth_indector.dart';

import '../../../core/constant/color.dart';
import 'onboarding_custom_clip_path.dart';

class InadecatorContainer extends GetView<OnBoardingControllerImp> {
  const InadecatorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double highScreen = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SmoothIndector(),
        ClipPath(
          clipper: OnBoardingCustomClipPath(),
          child: Container(
            padding: const EdgeInsets.only(right: 15, bottom: 15),
            color: AppColor.firstColor,
            height: highScreen * 0.4,
            width: double.infinity,
            alignment: Alignment.bottomRight,
          ),
        ),
      ],
    );
  }
}
