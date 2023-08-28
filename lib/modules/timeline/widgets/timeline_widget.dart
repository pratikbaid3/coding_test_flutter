import 'package:flutter/material.dart';

import '../model/timeline_model.dart';

class TimelineWidget extends StatelessWidget {
  final TimelineModel model;
  const TimelineWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: model.isLast
                            ? const Color(0xffFFC9C6)
                            : const Color(0xffD1F8B8),
                      ),
                      child: Center(
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: model.isLast
                                ? const Color(0xffFF0019)
                                : const Color(0xff00C700),
                          ),
                        ),
                      ),
                    ),
                    if (!model.isLast)
                      Expanded(
                        child: Container(
                          color: const Color(0xff00C700),
                          width: 2,
                        ),
                      )
                  ],
                ),
                const SizedBox(
                  width: 10,
                  height: 50,
                ),
                Expanded(
                  child: Text(
                    model.window,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(
                        0xff99AAB9,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: Text(
              "Rs ${model.charges}",
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff2E343A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
