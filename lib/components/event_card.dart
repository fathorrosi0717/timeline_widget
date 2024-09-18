import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isPast;
  const EventCard(
      {super.key,
      required this.isPast,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(27),
      margin: const EdgeInsets.all(27),
      decoration: BoxDecoration(
          color: isPast ? const Color(0xFF5C5470) : const Color(0xFFFAF0E6),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: isPast ? const Color(0xFFFFFAFA) : Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            description,
            style: TextStyle(
              color: isPast
                  ? const Color.fromARGB(255, 222, 209, 209)
                  : Colors.grey.shade900,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
