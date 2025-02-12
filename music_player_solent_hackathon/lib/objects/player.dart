import 'package:audioplayers/audioplayers.dart';
import 'package:music_player_solent_hackathon/objects/playlist.dart';
import 'package:music_player_solent_hackathon/objects/song.dart';

enum RepeatMode { repeatNone, repeatSingle, repeatPlaylist }

class Player {
  AudioPlayer player = AudioPlayer();
  Playlist playlist = Playlist();
  bool buffering = false;
  bool playing = false;
  Song? song;
  RepeatMode repeatMode = RepeatMode.repeatNone;
  bool shuffle = false; // TODO implement shuffle
  int _ptr = 0;
  _popSong() {
    if (_ptr < 0) _ptr = 0;
    if (_ptr >= playlist.songs.length) {
      if (repeatMode != RepeatMode.repeatPlaylist) return;
      _ptr = 0;
    }
    if (repeatMode == RepeatMode.repeatSingle) {
      return playlist.songs[_ptr];
    } else {
      return playlist.songs.removeAt(_ptr);
    }
  }

  playForce() {
    song = _popSong();
    if (song == null) return;
    String uri = song!.uri;
    if (Uri.tryParse(uri) == null) {
      player.play(UrlSource(uri));
    } else {
      player.play(DeviceFileSource(uri));
    }
  }

  play() {
    if (playing) return;
    if (_ptr >= playlist.songs.length) _ptr = 0;
    playForce();
  }

  pause() {
    player.pause();
  }

  resume() {
    player.resume();
  }

  next() {
    player.stop();
    if (_ptr < playlist.songs.length && song == playlist.songs[_ptr]) {
      _ptr += 1;
    }
    play();
  }

  prev() {
    player.stop();
    _ptr -= 1;
    play();
  }

  Player() {
    player.onPlayerStateChanged.listen((_) {
      switch (player.state) {
        case PlayerState.completed:
          song = null;
          playForce();
          break;
        case PlayerState.stopped:
          song = null;
          playing = false;
          break;
        case PlayerState.paused:
          playing = false;
          break;
        case PlayerState.playing:
          playing = true;
          break;
        case PlayerState.disposed:
          throw "Unexpected state";
      }
    });
  }
}
