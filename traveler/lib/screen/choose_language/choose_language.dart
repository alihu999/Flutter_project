import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveler/core/constant/color.dart';
import 'package:traveler/screen/choose_language/widget/custom_button.dart';

import '../../core/constant/image_assets.dart';
import '../../core/localization/changlocal.dart';

class ChoseLanguge extends GetView<LocaleController> {
  const ChoseLanguge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              ImageAssets.langauge,
              height: 400,
              width: 350,
            ),
            Text(
              "choselanguage".tr,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: AppColor.thirdColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  lable: "AR",
                  color: AppColor.firstColor,
                  onPressed: () {
                    controller.changeLanguge("ar");
                  },
                ),
                CustomButton(
                  lable: "EN",
                  color: AppColor.secondColor,
                  onPressed: () {
                    controller.changeLanguge("en");
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
