import 'package:flutter/foundation.dart';
import 'package:music_player_solent_hackathon/objects/song.dart';

class Playlist {
  final ValueNotifier<bool> needsUpdate = ValueNotifier(false);
  List<Song> songs = [];
  String thumbnailUri = "Placeholder Thumbnail";
  String description = "Placeholder Description";
  String name = "Placeholder Name";

  Playlist({
    this.name = "",
    this.description = "",
    this.songs = const [],
  }) {
    needsUpdate.value = true;
  }
}
