import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:songs/controller/player_controller.dart';

class SongsInfo extends GetView<PalyerControllerImp> {
  const SongsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: GetX<PalyerControllerImp>(builder: (controller) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  controller.songTitle.value,
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Text(
                  controller.artistName.value,
                  style: const TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
