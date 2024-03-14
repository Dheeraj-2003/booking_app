import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  DateTime _selectedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      weekendDays: const [],
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
        });
      },
      selectedDayPredicate: (selectedDay) =>
          isSameDay(selectedDay, _selectedDay),
      availableGestures: AvailableGestures.none,
      headerStyle: HeaderStyle(
          headerMargin: const EdgeInsets.all(12),
          formatButtonVisible: false,
          titleCentered: true,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white.withOpacity(0.1),
          )),
      focusedDay: _selectedDay,
      firstDay: DateTime(2023),
      lastDay: DateTime(2025),
    );
  }
}
