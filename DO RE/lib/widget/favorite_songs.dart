import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:songs/controller/player_controller.dart';

import 'query_song_image.dart';

class FavoriteSongs extends GetView<PalyerControllerImp> {
  const FavoriteSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
          future: controller.getFavoritList(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.data!.isEmpty) {
              return const Center(
                child: Text("no songs found"),
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) => GetX<PalyerControllerImp>(
                      builder: ((controller) => ListTile(
                            title: Text(snapshot.data![index].title),
                            subtitle: Text(snapshot.data![index].artist!),
                            leading: QuerySongImage(
                              songId: snapshot.data![index].id,
                            ),
                            tileColor: controller.songTitle.value ==
                                        snapshot.data![index].title &&
                                    controller.isplaying
                                ? const Color(0xff2B32B2).withOpacity(0.4)
                                : null,
                            onTap: () {
                              controller.playSongs(
                                  index, controller.favoritModel);
                            },
                          ))));
            }
          }),
    );
  }
}
