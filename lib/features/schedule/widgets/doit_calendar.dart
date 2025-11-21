import 'dart:math';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DoitCalendar extends StatefulWidget {
  final DateTime selectedDay;
  final Function(DateTime, DateTime) onDaySelected;

  const DoitCalendar({super.key, required this.selectedDay, required this.onDaySelected});

  @override
  State<DoitCalendar> createState() => _DoitCalendarState();
}

class _DoitCalendarState extends State<DoitCalendar> {
  DateTime _focusedDay = DateTime.now();

  final Map<DateTime, List<String>> _events = {
    DateTime.utc(2025, 11, 21): ['Event 1'],
    DateTime.utc(2025, 11, 22): ['Event 2'],
  };

  List<String> _getEventsForDay(DateTime day) {
    return _events[DateTime.utc(day.year, day.month, day.day)] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const calendarHeaderHeight = 60;
        const maxRowHeight = 52.0;

        final availableHeight = constraints.maxHeight - calendarHeaderHeight;

        final eachRowHeight = (availableHeight / 7).floorToDouble();
        final calendarRowHeight = min(eachRowHeight, maxRowHeight);

        return TableCalendar(
          locale: 'ko_KR',
          daysOfWeekHeight: calendarRowHeight,
          rowHeight: calendarRowHeight,
          eventLoader: _getEventsForDay,
          focusedDay: _focusedDay,
          firstDay: DateTime.utc(2000, 01, 01),
          lastDay: DateTime.utc(2100, 12, 31),
          selectedDayPredicate: (day) {
            return isSameDay(widget.selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _focusedDay = focusedDay;
            });
            widget.onDaySelected(selectedDay, focusedDay);
          },
          calendarStyle: const CalendarStyle(
            todayDecoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.fromBorderSide(BorderSide(color: Color(0xFF9FA8DA), width: 1.5)),
              color: Colors.transparent,
            ),
            todayTextStyle: TextStyle(color: Colors.black),
          ),
          headerStyle: const HeaderStyle(titleCentered: true, formatButtonVisible: false),
          calendarBuilders: CalendarBuilders(
            markerBuilder: (context, day, events) {
              if (isSameDay(day, widget.selectedDay)) {
                return const SizedBox();
              }
              return null;
            },
          ),
        );
      },
    );
  }
}
