import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:songs/controller/player_controller.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: GetX<PalyerControllerImp>(
            builder: (controller) {
              return QueryArtworkWidget(
                artworkBlendMode: BlendMode.dstOut,
                artworkBorder: BorderRadius.zero,
                artworkHeight: MediaQuery.of(context).size.height,
                artworkWidth: MediaQuery.of(context).size.width,
                id: controller.songId.value,
                type: ArtworkType.AUDIO,
              );
            },
          ),
        ),
        Container(
          color: Colors.white38,
        ),
        Positioned.fill(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: const SizedBox(),
        )),
      ],
    );
  }
}
