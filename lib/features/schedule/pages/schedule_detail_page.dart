import 'package:flutter/material.dart';

class ScheduleDetailPage extends StatelessWidget {
  const ScheduleDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('오늘 할일'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [TextButton(onPressed: () {}, child: Text('저장'))],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 1, child: Text('Title 1')),
            Expanded(flex: 3, child: Card()),
            Expanded(flex: 3, child: Card()),
          ],
        ),
      ),
    );
  }
}
