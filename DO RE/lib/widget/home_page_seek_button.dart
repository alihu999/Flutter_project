import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:songs/const%20/colors.dart';

import '../controller/player_controller.dart';

class HomePageSeekButton extends StatelessWidget {
  const HomePageSeekButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<PalyerControllerImp>(
        builder: (controller) => controller.songTitle.value != ""
            ? BottomAppBar(
                clipBehavior: Clip.antiAlias,
                color: Colors.black,
                shape: const CircularNotchedRectangle(),
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [
                        AppColors.secondColor,
                        AppColors.firstColor
                      ])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          icon: const Icon(
                            Icons.skip_previous,
                            shadows: [
                              Shadow(color: Colors.black, blurRadius: 5)
                            ],
                          ),
                          iconSize: 35,
                          color: Colors.white,
                          onPressed: () {
                            controller.seekToPrevious();
                          }),
                      IconButton(
                          icon: const Icon(
                            Icons.skip_next,
                            shadows: [
                              Shadow(color: Colors.black, blurRadius: 5)
                            ],
                          ),
                          iconSize: 35,
                          color: Colors.white,
                          onPressed: () {
                            controller.seekToNext();
                          }),
                    ],
                  ),
                ),
              )
            : const SizedBox());
  }
}
