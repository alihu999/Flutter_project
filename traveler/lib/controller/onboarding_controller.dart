import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../core/constant/app_route.dart';
import '../data/data_source/static/static.dart';

abstract class OnBoardingController extends GetxController {
  onPageChanged(int index);
  next();
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentIndex = 0;
  late PageController pagecontroller;

  @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }

  @override
  next() {
    currentIndex++;
    if (currentIndex > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoute.signIn);
    } else {
      pagecontroller.animateToPage(currentIndex,
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
    }
  }

  @override
  onPageChanged(int index) {
    currentIndex = index;
    update();
  }
}
