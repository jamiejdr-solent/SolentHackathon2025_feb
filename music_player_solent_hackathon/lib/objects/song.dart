class Song {
  String title;
  String author;
  int duration;
  dynamic audioSource; // TODO: change class later
  // TODO: later, lyrics
  dynamic thumbnail; // TODO: change class later

  Song(
      {this.title = "",
      this.author = "",
      this.duration = 0,
      this.audioSource = "",
      this.thumbnail = ""});
}
