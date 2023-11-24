import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:songs/controller/player_controller.dart';

import 'query_song_image.dart';

class AllSongs extends GetView<PalyerControllerImp> {
  const AllSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
          future: controller.getAllSongs(),
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
                            textColor: controller.songTitle.value ==
                                        snapshot.data![index].title &&
                                    controller.isplaying
                                ? const Color(0xff2B32B2).withOpacity(0.4)
                                : Colors.black,
                            subtitle: Text(snapshot.data![index].artist!),
                            leading: QuerySongImage(
                              songId: snapshot.data![index].id,
                            ),
                            onTap: () {
                              controller.playSongs(index, controller.allsongs);
                            },
                          ))));
            }
          }),
    );
  }
}
