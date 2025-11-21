import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doit Calendar'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime(2000, 01, 01),
              lastDate: DateTime(2100, 12, 31),
              onDateChanged: (date) {},
            ),
          ),
          Expanded(
            child: YearPicker(
              firstDate: DateTime(2000, 01, 01),
              lastDate: DateTime(2100, 12, 31),
              selectedDate: DateTime.now(),
              onChanged: (date) {},
            ),
          ),
        ],
      ),
    );
  }
}
