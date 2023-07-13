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

  static String? convertTimeToServer(DateTime? datetime) {
    if (datetime == null) {
      return null;
    }
    return datetime.toUtc().toIso8601String();
  }

  static String convertToDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  static String convertDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    return '${twoDigits(duration.inHours)}:$twoDigitMinutes:00';
  }
}
