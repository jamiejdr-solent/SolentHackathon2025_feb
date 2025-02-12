import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioplayer = context.watch<AudioPlayer>();
    return Center(
      child: IconButton(
          onPressed: () async {
            await audioplayer.play(
                DeviceFileSource("C:\\Users\\Stran\\Downloads\\sample-3s.mp3"));
          },
          icon: Icon(Icons.play_arrow)),
    );
  }
}
