import 'package:flutter/material.dart';
import 'package:traveler/core/services/services.dart';
import 'package:traveler/route.dart';
import 'package:traveler/screen/choose_language/choose_language.dart';
import 'package:get/get.dart';
import 'package:traveler/screen/home_page/home_page.dart';

import 'core/localization/changlocal.dart';
import 'core/localization/translation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController localcontroller = Get.put(LocaleController());
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: MyTranslation(),
        locale: localcontroller.language,
        theme: ThemeData(
            fontFamily: "robot",
            textTheme: const TextTheme(
              titleMedium: TextStyle(color: Colors.white, fontSize: 20),
            )),
        routes: routes,
        home: const HomePage()
        // const ChoseLanguge(),
        );
  }
}
