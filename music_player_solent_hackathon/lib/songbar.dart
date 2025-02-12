import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player_solent_hackathon/objects/player.dart';

class SongBarPlayButton extends StatelessWidget {
  Player player;
  const SongBarPlayButton({super.key, required this.player})

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProcessingState>(
      stream: player.processingStateStream,
      builder: (context, processingSnapshot) {
        final processingState = processingSnapshot.data;

        // Show CircularProgressIndicator if loading or buffering
        if (processingState == ProcessingState.loading ||
            processingState == ProcessingState.buffering) {
          return const CircularProgressIndicator();
        }

        return StreamBuilder<bool>(
          stream: player.playingStream,
          initialData: player.playing,
          builder: (context, playingSnapshot) {
            final isPlaying = playingSnapshot.data ?? false;

            return IconButton(
              icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
              iconSize: 48,
              onPressed: () {
                if (isPlaying) {
                  player.pause();
                } else {
                  player.play();
                }
              },
            );
          },
        );
      },
    );
  }
}

class SongBar extends StatelessWidget {
  @override
}
