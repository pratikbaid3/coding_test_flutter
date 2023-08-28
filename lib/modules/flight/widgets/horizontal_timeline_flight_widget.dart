import 'package:flutter/material.dart';
import 'package:scapia_test/modules/flight/model/flight_timeline_model.dart';

class HorizontalTimelineFlightWidget extends StatelessWidget {
  final FlightTimelineModel model;
  const HorizontalTimelineFlightWidget({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  Image.asset(
                    "assets/spicejet.png",
                    width: 25,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    model.name,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                model.id,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: const Color(0xffB5DAFD),
              width: 60,
              height: 2,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffF0F6FC),
              ),
              child: Text(model.duration),
            ),
            Container(
              color: const Color(0xffB5DAFD),
              width: 60,
              height: 2,
            ),
          ],
        ),
        Expanded(
          child: Container(),
        ),
      ],
    );
  }
}
