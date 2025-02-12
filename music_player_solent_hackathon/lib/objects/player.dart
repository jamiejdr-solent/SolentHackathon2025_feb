import 'package:just_audio/just_audio.dart';
import 'package:music_player_solent_hackathon/objects/song.dart';

class Player {
  List<Song> songs = [];
  AudioPlayer player = AudioPlayer();
  play() {
    player.play();
  }
  pause() {
    player.play();
  }
  playing() {
    return player.playing;
  }
}