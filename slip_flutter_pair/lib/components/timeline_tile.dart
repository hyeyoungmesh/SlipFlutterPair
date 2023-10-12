import 'package:flutter/material.dart';
import 'package:slip_flutter_pair/components/event_card.dart';
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
          color: isPast ? Colors.blueAccent : Colors.blueAccent.shade100,
          iconStyle: IconStyle(
            iconData: Icons.done,
            color: isPast ? Colors.white : Colors.blueAccent.shade100,
          ),
        ),
        beforeLineStyle: LineStyle(
          color: isPast ? Colors.blueAccent : Colors.blueAccent.shade100,
        ),
        endChild: EventCard(
          isPast: isPast,
          child2: eventCard,
        ),
      ),
    );
  }
}
