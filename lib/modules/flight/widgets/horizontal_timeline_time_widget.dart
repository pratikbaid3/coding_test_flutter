import 'package:flutter/material.dart';
import 'package:scapia_test/modules/flight/model/time_timeline_model.dart';
import 'package:scapia_test/modules/flight/services/date_tile_extension.dart';

class HorizontalTimelineTimeWidget extends StatelessWidget {
  final TimeTimelineModel model;
  const HorizontalTimelineTimeWidget({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Container()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            model.showLeading
                ? Container(
                    color: const Color(0xffB5DAFD),
                    width: 60,
                    height: 2,
                  )
                : const SizedBox(
                    width: 60,
                  ),
            Container(
              width: 12,
              height: 12,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFFCAB0),
              ),
              child: Center(
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFF6400),
                  ),
                ),
              ),
            ),
            model.showTrailing
                ? Container(
                    color: const Color(0xffB5DAFD),
                    width: 60,
                    height: 2,
                  )
                : const SizedBox(
                    width: 60,
                  ),
          ],
        ),
        Expanded(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                model.dateTime.toHours(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                model.dateTime.toDate(),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: SizedBox(
                  width: 100,
                  child: Text(
                    model.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
