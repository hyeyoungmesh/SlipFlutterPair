import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;

  const MyTimelineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      this.eventCard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        indicatorStyle: IndicatorStyle(
          width: 35,
          color: isPast ? Colors.blueAccent : Colors.blueAccent,
          iconStyle: IconStyle(
            iconData: Icons.done,
            color: isPast ? Colors.white : Colors.blueAccent,
          ),
        ),
        beforeLineStyle: const LineStyle(
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
