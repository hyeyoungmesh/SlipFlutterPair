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
        MyTimelineTile(
          isFirst: true,
          isLast: false,
          isPast: true,
          content: "content",
        ),
        MyTimelineTile(
          isFirst: false,
          isLast: false,
          isPast: true,
          content: "content",
        ),
        MyTimelineTile(
          isFirst: false,
          isLast: true,
          isPast: false,
          content: "content",
        ),
      ],
    );
  }
}

class MyTimelineTile extends StatelessWidget {
  const MyTimelineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.content,
  });
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Container(
        child: TimelineTile(
          isFirst: isFirst,
          isLast: isLast,
          endChild: DecorationBoxWidget(),
          beforeLineStyle: LineStyle(
            color: isPast ? Colors.purple : Colors.purple.shade100,
          ),
          indicatorStyle: IndicatorStyle(
            width: 25,
            height: 25,
            color: isPast ? Colors.purple : Colors.purple.shade100,
            iconStyle: IconStyle(
              color: isPast ? Colors.white : Colors.purple.shade100,
              iconData: Icons.done,
            ),
          ),
        ),
      ),
    );
  }
}

class DecorationBoxWidget extends StatelessWidget {
  const DecorationBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Text('text'),
      ),
    );
  }
}
