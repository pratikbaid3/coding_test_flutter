import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toHours() {
    String formattedDateTime = DateFormat('HH:mm').format(this);
    return formattedDateTime;
  }

  String toDate() {
    String formattedDateTime = DateFormat('d MMM y').format(this);
    return formattedDateTime;
  }
}
