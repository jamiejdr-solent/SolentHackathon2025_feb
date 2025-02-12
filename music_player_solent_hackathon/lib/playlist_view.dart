import 'package:flutter/material.dart';
import 'package:music_player_solent_hackathon/objects/playlist.dart';
import 'package:music_player_solent_hackathon/objects/song.dart';

class PlaylistDetail extends StatefulWidget {
  final Playlist playlist;
  const PlaylistDetail({super.key, required this.playlist});

  @override
  State<PlaylistDetail> createState() => _PlaylistDetailState();
}

class _PlaylistDetailState extends State<PlaylistDetail> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Icon(Icons.music_note, size: 64.0), // TODO: replace with thumbnail
        Text(widget.playlist.name),
        Text(widget.playlist.description),
        for (Song song in widget.playlist.songs)
          Card(
            child: ListTile(
              leading: Icon(Icons.music_note),
              title: Text(song.title),
              subtitle: Text(song.author),
            ),
          )
      ],
    );
  }
}
