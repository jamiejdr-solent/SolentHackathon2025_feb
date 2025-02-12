import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player_solent_hackathon/objects/player.dart';
import 'package:music_player_solent_hackathon/objects/playlist.dart';
import 'package:music_player_solent_hackathon/objects/song.dart';
import 'package:provider/provider.dart';

class SongsTab extends StatefulWidget {
  const SongsTab({super.key});

  @override
  State<SongsTab> createState() => _SongsTabState();
}

class _SongsTabState extends State<SongsTab> {
  List<Song> songs = [
    Song(
        title: "genesis",
        author: "TheFatRat",
        uri: "https://download.samplelib.com/mp3/sample-3s.mp3"),
    Song(
        title: "songhere",
        author: "authorhere",
        uri: "https://download.samplelib.com/mp3/sample-3s.mp3"),
  ];

  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer();
    Player player = context.watch<Player>();
    return ListView(
      children: [
        for (Song song in songs)
          Card(
            child: ListTile(
              leading: Icon(Icons.music_note),
              title: Text(song.title),
              subtitle: Text(song.author),
              onTap: () {
                audioPlayer.play(UrlSource(
                    "https://download.samplelib.com/mp3/sample-3s.mp3"));
              }, // TODO: make this play the song
            ),
          )
      ],
    );
  }
}
