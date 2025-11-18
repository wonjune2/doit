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
        actions: [TextButton(onPressed: () {}, child: Text('수정'))],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                '팀 프로젝트 주간 회의',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 5,
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Icon(Icons.watch_later_outlined),
                        title: Text('11월 25일(월)'),
                        subtitle: Text('오후 2:00 - 3:00'),
                      ),
                    ),
                    Divider(height: 1),
                    Expanded(
                      child: ListTile(
                        leading: Icon(Icons.place_outlined),
                        title: Text('11월 25일(월)'),
                        subtitle: Text('오후 2:00 - 3:00'),
                      ),
                    ),
                    Divider(height: 1),
                    Expanded(
                      child: ListTile(
                        leading: Icon(Icons.notifications_none),
                        title: Text('11월 25일(월)'),
                        subtitle: Text('오후 2:00 - 3:00'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(children: [Icon(Icons.notes), Text('메모')]),
                      SelectableText('dasdsa'),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(flex: 4),
            Expanded(
              child: ElevatedButton(onPressed: () {}, child: Text('완료하기')),
            ),
          ],
        ),
      ),
    );
  }
}
