import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:songs/const%20/app_routs.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:just_audio_background/just_audio_background.dart';

import 'dart:async';

abstract class PalyerController extends GetxController {
  getAllSongs();
  playSongs(int index, List<SongModel> playList);
  playAndPause();
  seekToNext();
  seekToPrevious();
  getFavoritList();
  editFavoritList();
  checkIsFavorit();
}

class PalyerControllerImp extends PalyerController {
  final audioQuery = OnAudioQuery();
  final audioPlayer = AudioPlayer();

  late Future<List<SongModel>> listAllSong;
  late List<SongModel> allsongs;

  RxInt currentIndex = 0.obs;
  bool isplaying = false;
  late SongModel songModel;
  late RxString songTitle = "".obs;
  late RxString artistName = "".obs;
  late RxInt songId = 0.obs;

  late Stream<Duration> position;
  Stream<Duration?> duration = Stream.value(Duration.zero);

  late final SharedPreferences prefs;
  List<String>? favListpref = [];
  List<SongModel> favoritModel = [];
  RxBool isFavorit = false.obs;

  @override
  void onInit() async {
    prefs = await SharedPreferences.getInstance();
    super.onInit();
  }

  @override
  Future<List<SongModel>> getAllSongs() async {
    var perm = await Permission.storage.request();
    if (perm.isGranted) {
      listAllSong = audioQuery.querySongs(
          ignoreCase: true,
          orderType: OrderType.ASC_OR_SMALLER,
          sortType: null,
          uriType: UriType.EXTERNAL);
      allsongs = await listAllSong;
      return listAllSong;
    } else {
      return [];
    }
  }

  @override
  playSongs(int index, List<SongModel> playList) async {
    try {
      await audioPlayer.setAudioSource(
        creatPlayList(playList),
        initialIndex: index,
      );
      audioPlayer.play();

      isplaying = true;
      duration = audioPlayer.durationStream;
      position = audioPlayer.positionStream.asBroadcastStream();
      audioPlayer.currentIndexStream.forEach((element) {
        currentIndex.value = element!;
        songTitle.value = playList[currentIndex.value].title;
        artistName.value = playList[currentIndex.value].artist!;
        songId.value = playList[currentIndex.value].id;
        checkIsFavorit();
      });

      Get.toNamed(AppRoute.playSongs);

      //  update();
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  ConcatenatingAudioSource creatPlayList(List<SongModel> songs) {
    List<AudioSource> sources = [];
    for (var song in songs) {
      sources.add(AudioSource.uri(
        Uri.parse(song.uri!),
        tag: MediaItem(
          // Specify a unique ID for each media item:
          id: '${song.id}',
          // Metadata to display in the notification:
          album: "${song.album}",
          title: song.displayNameWOExt,
        ),
      ));
    }
    return ConcatenatingAudioSource(children: sources);
  }

  @override
  playAndPause() {
    if (isplaying) {
      audioPlayer.pause();
    } else {
      audioPlayer.play();
    }
    isplaying = !isplaying;
    update();
  }

  @override
  seekToNext() async {
    if (audioPlayer.hasNext) {
      await audioPlayer.seekToNext();
    }
    checkIsFavorit();
  }

  @override
  seekToPrevious() async {
    if (audioPlayer.hasPrevious) {
      await audioPlayer.seekToPrevious();
    }
    checkIsFavorit();
  }

  @override
  Future<List<SongModel>> getFavoritList() async {
    favoritModel.clear();
    favListpref = prefs.getStringList("favorit");
    favListpref = favListpref ?? [];

    if (favListpref!.isNotEmpty) {
      for (var song in allsongs) {
        if (favListpref!.contains(song.title)) {
          favoritModel.add(song);
        }
      }
    }

    return favoritModel;
  }

  @override
  editFavoritList() {
    if (favListpref!.contains(songTitle.value)) {
      favListpref!.remove(songTitle.value);
    } else {
      favListpref!.add(songTitle.value);
    }
    prefs.setStringList("favorit", favListpref!);
    checkIsFavorit();
  }

  @override
  checkIsFavorit() {
    favListpref = prefs.getStringList("favorit");
    favListpref = favListpref ?? [];
    if (favListpref!.contains(songTitle.value)) {
      isFavorit.value = true;
    } else {
      isFavorit.value = false;
    }
  }
}
