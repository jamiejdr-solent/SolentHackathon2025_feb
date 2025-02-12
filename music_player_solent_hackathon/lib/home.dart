import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.audio_file),
                text: "Songs",
              ),
              Tab(
                icon: Icon(Icons.library_music),
                text: "Playlists",
              ),
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.auto_graph),
                text: "Stats",
              ),
              Tab(
                icon: Icon(Icons.access_alarm),
                text: "Import",
              ),
            ]),
          ),
          body: ListView(
            children: [Placeholder()],
          ),
        ));
  }
}
