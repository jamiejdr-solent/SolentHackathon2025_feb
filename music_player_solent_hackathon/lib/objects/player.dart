import 'package:just_audio/just_audio.dart';
import 'package:music_player_solent_hackathon/objects/playlist.dart';

class Player {
  Playlist playlist = Playlist();
  AudioPlayer audioPlayer = AudioPlayer();
  int ptr = 0;
  void play() {
    if (audioPlayer.audioSource == null) {
      if (playlist.songs.isEmpty) return;
      if (ptr > playlist.songs.length) ptr = 0;
      audioPlayer.setAudioSource(AudioSource.uri(Uri.parse(playlist.songs[ptr].uri)));
    }
    audioPlayer.play();
  }
  void pause() {
    audioPlayer.pause();
  }
  next() {
    ++ptr;
    play();
  }
  Player();
}

Player player = Player();
