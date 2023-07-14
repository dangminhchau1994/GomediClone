import 'package:app/application/theme/ui_color.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class UITableCalendar extends StatefulWidget {
  const UITableCalendar({super.key});

  @override
  State<UITableCalendar> createState() => _UITableCalendarState();
}

class _UITableCalendarState extends State<UITableCalendar> {
  DateTime? _selectedDay;
  var _calendarFormat = CalendarFormat.week;
  var _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      sixWeekMonthsEnforced: true,
      startingDayOfWeek: StartingDayOfWeek.monday,
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      calendarFormat: _calendarFormat,
      currentDay: _selectedDay,
      availableGestures: AvailableGestures.horizontalSwipe,
      focusedDay: _focusedDay,
      daysOfWeekHeight: 20,
      selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
      calendarStyle: CalendarStyle(
        todayDecoration: BoxDecoration(
          color: UIColors.blue,
          shape: BoxShape.circle,
        ),
        disabledDecoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        selectedDecoration: BoxDecoration(
          color: UIColors.blue,
          shape: BoxShape.circle,
        ),
      ),
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(_selectedDay, selectedDay)) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        }
      },
      onFormatChanged: (format) {
        if (_calendarFormat != format) {
          setState(() {
            _calendarFormat = format;
          });
        }
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
    );
  }
}
