import 'package:flutter/foundation.dart';

class Song {
  final ValueNotifier<bool> needsUpdate = ValueNotifier(false);
  String title;
  String author;
  int duration;
  String uri;
  Song(
      {this.title = "Placeholder Title",
      this.author = "Placeholder Author",
      required this.uri,
      this.duration = 0});
}
