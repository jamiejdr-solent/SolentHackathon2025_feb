import 'package:music_player_solent_hackathon/objects/song.dart';

class Playlist {
  List<Song> songs;
  String thumbnailUri;
  String description;
  String name;

  Playlist(
      {this.songs = const [],
      this.thumbnailUri = "",
      this.description = "",
      this.name = ""});
}
