import 'package:flutter/material.dart';

class MediaBar extends StatefulWidget {
  const MediaBar({super.key});

  @override
  State<MediaBar> createState() => _MediaBarState();
}

class _MediaBarState extends State<MediaBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("SONG DURATION AND TIME GOES HERE"),
        // TODO: make progress bar
        Row(
          children: [
            IconButton(
                // TODO: previous song button
                onPressed: () {},
                icon: Icon(Icons.abc)),
            IconButton(
                // TODO: previous song button
                onPressed: () {},
                icon: Icon(Icons.abc)),
            IconButton(
                // TODO: seek back button
                onPressed: () {},
                icon: Icon(Icons.abc)),
            IconButton(
                // TODO: play button
                onPressed: () {},
                icon: Icon(Icons.abc)),
            IconButton(
                // TODO: seek forward button
                onPressed: () {},
                icon: Icon(Icons.abc)),
            IconButton(
                // TODO: shuffle button
                onPressed: () {},
                icon: Icon(Icons.abc)),
            IconButton(
                // TODO: next song button
                onPressed: () {},
                icon: Icon(Icons.abc)),
          ],
        ),
      ],
    );
  }
}
