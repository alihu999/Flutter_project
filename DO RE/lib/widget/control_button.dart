import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:songs/const%20/colors.dart';
import 'package:songs/controller/player_controller.dart';

class ControlButton extends GetView<PalyerControllerImp> {
  const ControlButton({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHigh = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: screenHigh * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StreamBuilder(
                  stream: controller.position,
                  builder: ((context, snapshot) {
                    return Text(snapshot.data.toString().split(".")[0]);
                  })),
              GetX<PalyerControllerImp>(builder: (controller) {
                return IconButton(
                  icon: Icon(
                    Icons.favorite,
                    size: 35,
                    color:
                        controller.isFavorit.value ? Colors.red : Colors.white,
                  ),
                  onPressed: () {
                    controller.editFavoritList();
                  },
                );
              }),
              StreamBuilder(
                  stream: controller.duration,
                  builder: ((context, snapshot) {
                    return Text(snapshot.data == null
                        ? "0:00:00"
                        : snapshot.data.toString().split(".")[0]);
                  })),

              //  Text(controller.duration.toString().split(".")[0]),
            ],
          ),
          StreamBuilder(
              stream: controller.position,
              builder: ((context, snapshot) {
                Duration progress = snapshot.data ?? Duration.zero;
                Duration total =
                    controller.audioPlayer.duration ?? Duration.zero;

                return ProgressBar(
                  progress: progress,
                  total: total,
                  timeLabelTextStyle: const TextStyle(fontSize: 0),
                  thumbColor: AppColors.firstColor,
                  progressBarColor: AppColors.firstColor,
                  baseBarColor: AppColors.firstColor.withOpacity(0.4),
                  onSeek: (value) {
                    controller.audioPlayer.seek(value);
                  },
                );
              })),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: CircleAvatar(
                  backgroundColor: AppColors.firstColor,
                  radius: 20,
                  child: const Icon(
                    Icons.skip_previous,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  controller.seekToPrevious();
                },
              ),
              GetBuilder<PalyerControllerImp>(builder: (controller) {
                return InkWell(
                  child: CircleAvatar(
                    backgroundColor: AppColors.firstColor,
                    radius: 30,
                    child: Icon(
                      controller.isplaying ? Icons.pause : Icons.play_arrow,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    controller.playAndPause();
                  },
                );
              }),
              InkWell(
                child: CircleAvatar(
                  backgroundColor: AppColors.firstColor,
                  radius: 20,
                  child: const Icon(
                    Icons.skip_next,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  controller.seekToNext();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
