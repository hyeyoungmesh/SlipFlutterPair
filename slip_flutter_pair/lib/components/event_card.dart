import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final bool isPast;
  final child;

  const EventCard({super.key, required this.isPast, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: isPast ? Colors.blueAccent : Colors.blueAccent[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
