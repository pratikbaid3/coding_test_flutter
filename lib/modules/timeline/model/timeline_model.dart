class TimelineModel {
  bool isLast;
  final String window;
  final String charges;
  TimelineModel({
    required this.charges,
    required this.window,
    this.isLast = false,
  });
}
