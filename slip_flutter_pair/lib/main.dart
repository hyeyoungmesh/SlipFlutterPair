import 'package:flutter/material.dart';
import 'package:slip_flutter_pair/components/timeline_tile.dart';
import 'package:timeline_tile/timeline_tile.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            MyTimelineTile(
              isFirst: true,
              isLast: false,
              isPast: true,
            ),
            MyTimelineTile(
              isFirst: false,
              isLast: false,
              isPast: true,
            ),
            MyTimelineTile(
              isFirst: false,
              isLast: true,
              isPast: false,
            ),
          ],
        ),
      ),
    );
  }
}
