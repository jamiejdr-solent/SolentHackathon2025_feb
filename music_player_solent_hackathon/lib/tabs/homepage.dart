import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  AudioPlayer audio = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
          onPressed: () async {
            await audio.play(
                DeviceFileSource("C:\\Users\\Stran\\Downloads\\sample-3s.mp3"));
          },
          icon: Icon(Icons.play_arrow)),
    );
  }
}
