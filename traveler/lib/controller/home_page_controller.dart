import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:traveler/core/constant/app_route.dart';

import '../data/data_source/static/static.dart';
import '../data/data_source/weather_data.dart';
import '../data/model/weather.dart';

abstract class HomePageController extends GetxController {
  onTap(int index);
  onPageChanged(int index);
  goToDetailsPage();
}

class HomePageControllerImp extends HomePageController {
  // int currentIndex = 1;
  int placeIndex = 0;
  late Future<Weather> weather;
  late PageController pageController;
  final bottomBarKey = GlobalKey<CurvedNavigationBarState>();
  @override
  void onInit() {
    pageController = PageController(initialPage: 1);

    super.onInit();
  }

  @override
  onTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }

  @override
  onPageChanged(int index) {
    final bottomBarState = bottomBarKey.currentState!;
    bottomBarState.setPage(index);
  }

  @override
  goToDetailsPage() async {
    Get.toNamed(AppRoute.detailsPage);
    weather = getData(placeList[placeIndex].weatherUrl);
  }
}
