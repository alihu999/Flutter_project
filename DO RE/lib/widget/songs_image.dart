import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:songs/const%20/colors.dart';
import 'package:songs/controller/player_controller.dart';
import 'package:lottie/lottie.dart';

class SongsImage extends StatelessWidget {
  const SongsImage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHigh = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
        padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
        alignment: Alignment.bottomCenter,
        height: screenHigh * 0.55,
        width: screenWidth * 0.75,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [AppColors.firstColor, AppColors.secondColor]),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(200),
                bottomRight: Radius.circular(200))),
        child: GetX<PalyerControllerImp>(
          builder: (controller) {
            return QueryArtworkWidget(
              artworkBorder: BorderRadius.circular(500),
              artworkHeight: screenWidth * 0.65,
              artworkWidth: screenWidth * 0.65,
              id: controller.songId.value,
              type: ArtworkType.AUDIO,
              nullArtworkWidget: CircleAvatar(
                  radius: screenWidth * 0.3,
                  backgroundColor: Colors.white,
                  child: Lottie.asset(
                    "assets/play music.json",
                    width: screenWidth * 0.3,
                  )),
            );
          },
        ));
  }
}
