import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveler/core/constant/color.dart';

import '../../controller/home_page_controller.dart';
import '../account/account.dart';
import '../setting/setting.dart';
import 'widget/bottom_bar.dart';
import 'widget/image_list.dart';

class HomePage extends GetView<HomePageControllerImp> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return Scaffold(
        extendBody: true,
        appBar: AppBar(
          backgroundColor: AppColor.thirdColor,
          title: const Text(
            "Traveler",
          ),
          centerTitle: true,
          actions: const [
            Icon(Icons.search),
          ],
        ),
        body: PageView(
          controller: controller.pageController,
          onPageChanged: (index) {
            controller.onPageChanged(index);
          },
          children: const [
            Setting(),
            ImageList(),
            Account(),
          ],
        ),
        bottomNavigationBar: const BottomBar());
  }
}
