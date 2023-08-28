import 'package:flutter/material.dart';
import 'package:scapia_test/modules/timeline/widgets/timeline_widget.dart';

import '../model/timeline_model.dart';

class TimelineCard extends StatelessWidget {
  final List<TimelineModel> timelineModelList;
  const TimelineCard({
    Key? key,
    required this.timelineModelList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color(0xffF0F6FA),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Cancellation window",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2E343A),
                ),
              ),
              Text(
                "Charges",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2E343A),
                ),
              ),
            ],
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: timelineModelList.length,
            itemBuilder: (BuildContext context, int index) {
              return TimelineWidget(
                model: timelineModelList[index],
              );
            },
          ),
          const Text(
            "As per local time",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(
                0xff99AAB9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
