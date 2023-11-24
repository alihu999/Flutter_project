import 'package:flutter/material.dart';
import 'package:songs/widget/background.dart';
import 'package:songs/widget/control_button.dart';
import 'package:songs/widget/songs_image.dart';
import 'package:songs/widget/songs_info.dart';

class PlaySong extends StatelessWidget {
  const PlaySong({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          const Background(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SongsImage(), SongsInfo(), ControlButton()],
            ),
          ),
        ],
      ),
    );
  }
}
