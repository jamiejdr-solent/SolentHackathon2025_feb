import 'package:flutter/material.dart';
import 'package:music_player_solent_hackathon/songbar.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SongBar()
    );
  }
}
