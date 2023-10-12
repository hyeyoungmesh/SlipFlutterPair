import 'package:flutter/material.dart';

import 'package:timeline_tile/timeline_tile.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Timeline edu"),
        ),
        body: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyTimelineListView();
  }
}

class MyTimelineListView extends StatelessWidget {
  const MyTimelineListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        MyTimelineTile(isFirst: true, isLast: false, content: "content")
      ],
    );
  }
}

class MyTimelineTile extends StatelessWidget {
  const MyTimelineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.content});
  final bool isFirst;
  final bool isLast;
  final String content;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      endChild: Text(content),
    );
  }
}
