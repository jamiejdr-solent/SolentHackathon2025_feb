import 'package:music_player_solent_hackathon/objects/song.dart';

class Playlist {
  List<Song> songs = [];
  String thumbnailUri = "Placeholder Thumbnail";
  String description = "Placeholder Description";
  String name = "Placeholder Name";

  populate() {
    Song song = Song();
    song.uri =
        "https://freetestdata.com/wp-content/uploads/2021/09/Free_Test_Data_500KB_MP3.mp3";
    songs.add(song);
  }

  Playlist({
    this.name = "",
    this.description = "",
  });
}
