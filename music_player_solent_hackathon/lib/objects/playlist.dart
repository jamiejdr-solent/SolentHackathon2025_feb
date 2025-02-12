import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:file_picker/file_picker.dart';
import 'package:music_player_solent_hackathon/objects/song.dart';

class Playlist {
  final ValueNotifier<bool> needsUpdate = ValueNotifier(false);
  List<Song> songs;
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

  static Future<Playlist> fromFolder(String path) async {
    final playlist = Playlist(name: path.split(Platform.pathSeparator).last);
    final directory = Directory(path);

    if (await directory.exists()) {
      final files = directory.listSync();
      for (var file in files) {
        if (file is File && _isAudioFile(file.path)) {
          Song song = Song(
              title: "demo",
              uri: "https://download.samplelib.com/mp3/sample-3s.mp3");
          song.uri = file.path;
          playlist.songs.add(song);
        }
      }
    }
    playlist.needsUpdate.value = true;
    return playlist;
  }

  static Future<Playlist?> fromFolderUser() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();
    if (selectedDirectory == null) return null;
    return fromFolder(selectedDirectory);
  }

  static bool _isAudioFile(String path) {
    final audioExtensions = ['.mp3', '.wav', '.aac', '.flac', '.ogg'];
    return audioExtensions.any((ext) => path.toLowerCase().endsWith(ext));
  }
}
