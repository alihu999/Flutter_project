import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';

class QuerySongImage extends StatelessWidget {
  const QuerySongImage({super.key, required this.songId});
  final int songId;

  @override
  Widget build(BuildContext context) {
    return QueryArtworkWidget(
      id: songId,
      type: ArtworkType.AUDIO,
      nullArtworkWidget: const CircleAvatar(
        radius: 25,
        backgroundColor: Color(0xff2B32B2),
        child: Icon(
          Icons.music_note,
          color: Colors.white,
        ),
      ),
    );
  }
}
