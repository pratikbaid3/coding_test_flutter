class TimeTimelineModel {
  final DateTime dateTime;
  final String description;
  final bool showLeading;
  final bool showTrailing;
  TimeTimelineModel({
    required this.description,
    required this.dateTime,
    this.showTrailing = true,
    this.showLeading = true,
  });
}
