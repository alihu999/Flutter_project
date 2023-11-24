import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/player_controller.dart';

class PlayPauseButton extends StatelessWidget {
  const PlayPauseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<PalyerControllerImp>(
        builder: ((controller) => controller.songTitle.value != ""
            ? FloatingActionButton(
                backgroundColor: const Color(0xff2B32B2),
                child: GetBuilder<PalyerControllerImp>(
                    builder: (controller) => Icon(
                          controller.isplaying ? Icons.pause : Icons.play_arrow,
                          shadows: const [
                            Shadow(color: Colors.white, blurRadius: 5)
                          ],
                        )),
                onPressed: () {
                  controller.playAndPause();
                  controller.update();
                })
            : const SizedBox()));
  }
}
