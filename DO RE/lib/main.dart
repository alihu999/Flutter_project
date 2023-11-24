import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:songs/screen/home_page.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'route.dart';

Future<void> main() async {
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationIcon: "mipmap/ic_launcher",
    androidNotificationOngoing: true,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: routes,
    );
  }
}
