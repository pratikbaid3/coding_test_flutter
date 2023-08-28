import 'package:flutter/material.dart';
import 'package:scapia_test/modules/timeline/model/timeline_model.dart';
import 'package:scapia_test/modules/timeline/widgets/timeline_card.dart';

import 'modules/flight/model/flight_timeline_model.dart';
import 'modules/flight/model/layover_timeline_model.dart';
import 'modules/flight/model/time_timeline_model.dart';
import 'modules/flight/widgets/flight_card.dart';
import 'modules/flight/widgets/horizontal_timeline_flight_widget.dart';
import 'modules/flight/widgets/horizontal_timeline_layover_widget.dart';
import 'modules/flight/widgets/horizontal_timeline_time_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            TimelineCard(
              timelineModelList: [
                TimelineModel(
                  window: "Till 05th Jun'23, 02:00 PM",
                  charges: "Rs 0",
                ),
                TimelineModel(
                  window: "Till 05th Jun'23, 02:00 PM",
                  charges: "Rs 0",
                ),
                TimelineModel(
                  window:
                      "From 05th Jun'23, 02:00 PM, till 08th Jun'23, 02:00 PM",
                  charges: "100% of the booking amount will be charged",
                  isLast: true,
                )
              ],
            ),
            const SizedBox(height: 50),
            FlightCard(
              timelineItems: [
                HorizontalTimelineTimeWidget(
                  model: TimeTimelineModel(
                    dateTime: DateTime.now(),
                    description: 'Pune (PNQ)\n Terminal 1',
                    showLeading: false,
                  ),
                ),
                HorizontalTimelineFlightWidget(
                  model: FlightTimelineModel(
                    name: "SpiceJet",
                    id: "SG-532",
                    duration: "01h 45m",
                  ),
                ),
                HorizontalTimelineLayoverWidget(
                  model: LayoverTimelineModel(
                    description: "Layover in Bangalore (BLR)",
                    duration: "01h 45m",
                  ),
                ),
                HorizontalTimelineTimeWidget(
                  model: TimeTimelineModel(
                    dateTime: DateTime.now(),
                    description: 'Pune (PNQ)\n Terminal 1',
                    showTrailing: false,
                  ),
                ),
              ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
