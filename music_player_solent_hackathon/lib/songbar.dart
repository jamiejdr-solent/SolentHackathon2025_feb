import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_player_solent_hackathon/objects/player.dart';

class SongBarPlayButton extends StatelessWidget {
  const SongBarPlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProcessingState>(
      stream: player.audioPlayer.processingStateStream,
      builder: (context, processingSnapshot) {
        final processingState = processingSnapshot.data;

        // Show CircularProgressIndicator if loading or buffering
        if (processingState == ProcessingState.loading ||
            processingState == ProcessingState.buffering) {
          return const CircularProgressIndicator();
        }

        return StreamBuilder<bool>(
          stream: player.audioPlayer.playingStream,
          initialData: player.audioPlayer.playing,
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
  const SongBar({super.key});
  @override
  Widget build(BuildContext context) {
    return const SongBarPlayButton();
  }
}
