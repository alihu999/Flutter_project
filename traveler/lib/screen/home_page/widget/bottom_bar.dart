import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:traveler/core/constant/color.dart';

import '../../../controller/home_page_controller.dart';

class BottomBar extends GetView<HomePageControllerImp> {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: controller.bottomBarKey,
      color: AppColor.thirdColor,
      height: 60,
      index: 1,
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: AppColor.secondColor,
      items: const [
        Icon(
          Icons.settings,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.person,
          size: 30,
          color: Colors.white,
        ),
      ],
      onTap: (index) {
        controller.onTap(index);
      },
    );
  }
}
