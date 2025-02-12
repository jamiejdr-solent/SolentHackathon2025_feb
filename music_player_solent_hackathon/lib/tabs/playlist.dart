import 'package:flutter/material.dart';
import 'package:music_player_solent_hackathon/objects/playlist.dart';

class PlaylistTab extends StatefulWidget {
  const PlaylistTab({super.key});

  @override
  State<PlaylistTab> createState() => _PlaylistTabState();
}

class _PlaylistTabState extends State<PlaylistTab> {
  List<Playlist> playlists = [
    Playlist(name: "Big funky", description: "the greatest"),
    Playlist(name: "playlist whoo", description: "omg its a playlist"),
    Playlist(
        name: "taylor swifts biggest hits", description: "Best playlist yet"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (Playlist playlist in playlists)
          ListTile(
            leading: Icon(Icons.music_note),
            title: Text(playlist.name),
            subtitle: Text(playlist.description),
            onTap: () {}, // TODO: view the playlist information
          )
      ],
    );
  }
}
