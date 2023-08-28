import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:scapia_test/modules/flight/model/layover_timeline_model.dart';

class HorizontalTimelineLayoverWidget extends StatelessWidget {
  final LayoverTimelineModel model;
  const HorizontalTimelineLayoverWidget({
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
              const SizedBox(height: 25),
              SizedBox(
                width: 80,
                child: Text(
                  model.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xffFF2F48),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const DottedLine(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              lineLength: 60,
              lineThickness: 1.0,
              dashLength: 4.0,
              dashColor: Color(0xffFF4640),
              dashRadius: 0.0,
              dashGapLength: 2.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffFFEFF1),
              ),
              child: Text(model.duration),
            ),
            const DottedLine(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              lineLength: 60,
              lineThickness: 1.0,
              dashLength: 4.0,
              dashColor: Color(0xffFF4640),
              dashRadius: 0.0,
              dashGapLength: 2.0,
              dashGapColor: Colors.transparent,
              dashGapRadius: 0.0,
            ),
          ],
        ),
        Expanded(child: Container()),
      ],
    );
  }
}
