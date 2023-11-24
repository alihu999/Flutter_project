import 'package:get/get.dart';
import 'package:traveler/core/constant/app_route.dart';
import 'package:traveler/core/services/services.dart';
import 'package:flutter/material.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  changeLanguge(String languagecode) {
    Locale locale = Locale(languagecode);
    myServices.sharedPreferences.setString("lang", languagecode);
    Get.updateLocale(locale);
    Get.offNamed(AppRoute.onBoarding);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
