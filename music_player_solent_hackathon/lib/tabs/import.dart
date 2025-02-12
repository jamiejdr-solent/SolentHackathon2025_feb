import 'package:flutter/material.dart';

class ImportTab extends StatefulWidget {
  const ImportTab({super.key});

  @override
  State<ImportTab> createState() => IimportTabState();
}

class IimportTabState extends State<ImportTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Importing text goes here"),
    );
  }
}
