import 'package:flutter/material.dart';
import 'package:music_player_solent_hackathon/objects/playlist.dart';
import 'package:music_player_solent_hackathon/objects/song.dart';
import 'package:music_player_solent_hackathon/playlist_view.dart';

class PlaylistTab extends StatefulWidget {
  const PlaylistTab({super.key});

  @override
  State<PlaylistTab> createState() => _PlaylistTabState();
}

class _PlaylistTabState extends State<PlaylistTab> {
  bool viewAll = true;
  Playlist currentPlaylist = Playlist(
      name: "Loading",
      description:
          "Its probably not loading by now if you are reading this...");
  List<Playlist> playlists = [
    Playlist(name: "Big funky", description: "the greatest"),
    Playlist(name: "playlist whoo", description: "omg its a playlist"),
    Playlist(
        name: "taylor swifts biggest hits",
        description: "Best playlist yet",
        songs: [Song(), Song(), Song()]),
  ];

  @override
  Widget build(BuildContext context) {
    return !viewAll
        ? Scaffold(
            appBar: AppBar(
              title: Text(currentPlaylist.name),
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    setState(() {
                      viewAll = true;
                    });
                  },
                  icon: Icon(Icons.arrow_back)),
            ),
            body: PlaylistDetail(playlist: currentPlaylist),
          )
        : ListView(
            children: [
              for (Playlist playlist in playlists)
                Card(
                  child: ListTile(
                    leading: Icon(Icons.music_note),
                    title: Text(playlist.name),
                    subtitle: Text(playlist.description),
                    onTap: () {
                      setState(() {
                        currentPlaylist = playlist;
                        viewAll = false;
                      });
                    }, // TODO: view the playlist information
                  ),
                )
            ],
          );
  }
}
