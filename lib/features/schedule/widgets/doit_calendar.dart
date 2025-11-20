import 'dart:math';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DoitCalendar extends StatefulWidget {
  const DoitCalendar({super.key});

  @override
  State<DoitCalendar> createState() => _DoitCalendarState();
}

class _DoitCalendarState extends State<DoitCalendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const calendarHeaderHeight = 60;
        const maxRowHeight = 52.0;

        final availableHeight = constraints.maxHeight - calendarHeaderHeight;

        final eachRowHeight = (availableHeight / 7).floorToDouble();
        final calendarRowHeight = min(eachRowHeight, maxRowHeight);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TableCalendar(
            locale: 'ko_KR',
            daysOfWeekHeight: calendarRowHeight,
            rowHeight: calendarRowHeight,
            focusedDay: _focusedDay,
            firstDay: DateTime.utc(2000, 01, 01),
            lastDay: DateTime.utc(2100, 12, 31),
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            calendarStyle: const CalendarStyle(
              todayDecoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.fromBorderSide(BorderSide(color: Color(0xFF9FA8DA), width: 1.5)),
                color: Colors.transparent,
              ),
              todayTextStyle: TextStyle(color: Colors.black),
            ),
          ),
        );
      },
    );
  }
}
