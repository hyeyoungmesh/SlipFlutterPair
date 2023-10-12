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
      padding: EdgeInsets.symmetric(horizontal: 50),
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
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String content;

  const MyTimelineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        endChild: DecorationBoxWidget(
          isPast: isPast,
          child: Text(content),
        ),
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
    );
  }
}

class DecorationBoxWidget extends StatelessWidget {
  final bool isPast;
  final child;

  const DecorationBoxWidget({
    Key? key,
    required this.isPast,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isPast ? Colors.purple : Colors.purple.shade100,
      ),
      child: child,
    );
  }
}
