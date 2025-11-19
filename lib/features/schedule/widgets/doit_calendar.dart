import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DoitCalendar extends StatelessWidget {
  const DoitCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const calendarHeaderHeight = 60;

        final availableHeight = constraints.maxHeight - calendarHeaderHeight;

        final eachRowHeight = availableHeight / 7;
        print(constraints.maxHeight);
        return TableCalendar(
          // daysOfWeekHeight: eachRowHeight,
          // rowHeight: eachRowHeight,
          focusedDay: DateTime.now(),
          firstDay: DateTime.utc(2000, 01, 01),
          lastDay: DateTime.utc(2100, 12, 31),
        );
      },
    );
  }
}
