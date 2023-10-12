import 'package:flutter/material.dart';
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
    return Scaffold(
      body: Column(
        children: [
          TimelineTile(
            isFirst: true,
            isLast: false,
          ),
          TimelineTile(
            isFirst: false,
            isLast: false,
          ),
          TimelineTile(
            isFirst: false,
            isLast: true,
          ),
        ],
      ),
    );
  }
}
