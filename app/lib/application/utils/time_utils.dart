import 'package:intl/intl.dart';

class TimeUtils {
  static String convertToTime24(String value) {
    return DateFormat.Hms().format(
      DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        int.parse(value.split(':')[0]),
        int.parse(value.split(':')[1]),
      ).toLocal(),
    );
  }

  static String convertDuration(Duration duration) {
    return duration.toString().split('.').first.padLeft(8, "0");
  }
}
