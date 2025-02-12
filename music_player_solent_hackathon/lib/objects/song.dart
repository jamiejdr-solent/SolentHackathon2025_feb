import 'package:flutter/foundation.dart';

class Song {
  final ValueNotifier<bool> needsUpdate = ValueNotifier(false);
  String title;
  String author;
  int duration = 1;
  String uri = "Placeholder URI";
  Song({
    this.title = "Placeholder Title",
    this.author = "Placeholder Author",
  });
}
