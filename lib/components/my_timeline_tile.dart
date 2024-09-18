import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timeline_widget/components/event_card.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String title;
  final String description;
  const MyTimelineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: TimelineTile(
          isFirst: isFirst,
          isLast: isLast,
          beforeLineStyle: LineStyle(
              color:
                  isPast ? const Color(0xFFB9B4C7) : const Color(0xFFFAF0E6)),
          indicatorStyle: IndicatorStyle(
              width: 37,
              color: isPast ? const Color(0xFFB9B4C7) : const Color(0xFFFAF0E6),
              iconStyle: IconStyle(
                iconData: Icons.done,
                color:
                    isPast ? const Color(0xFFFFFAFA) : const Color(0xFFFAF0E6),
              )),
          endChild: EventCard(
            isPast: isPast,
            title: title,
            description: description,
          ),
        ));
  }
}
