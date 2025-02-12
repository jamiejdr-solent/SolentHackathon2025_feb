import 'package:flutter/material.dart';
import 'package:music_player_solent_hackathon/objects/song.dart';

class SongsTab extends StatefulWidget {
  const SongsTab({super.key});

  @override
  State<SongsTab> createState() => _SongsTabState();
}

class _SongsTabState extends State<SongsTab> {
  List<Song> songs = [
    Song(title: "genesis", author: "TheFatRat"),
    Song(title: "songhere", author: "authorhere"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (Song song in songs)
          Card(
            child: ListTile(
              leading: Icon(Icons.music_note),
              title: Text(song.title),
              subtitle: Text(song.author),
              onTap: () {}, // TODO: make this play the song
            ),
          )
      ],
    );
  }
}
