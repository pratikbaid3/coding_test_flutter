import 'package:flutter/material.dart';

class FlightCard extends StatelessWidget {
  final List<Widget> timelineItems;
  const FlightCard({
    required this.timelineItems,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffFEFAF2),
          border: Border.all(
            color: const Color(0xffFFEBE2), // Set the border color
            width: 1.0, // Set the border width
          ),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: timelineItems,
          ),
        ),
      ),
    );
  }
}
