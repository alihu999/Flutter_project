import 'package:flutter/material.dart';
import 'package:songs/const%20/app_routs.dart';
import 'package:songs/screen/play_songs.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.playSongs: (context) => const PlaySong()
};
