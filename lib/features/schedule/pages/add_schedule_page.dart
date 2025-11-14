import 'package:flutter/material.dart';

class AddSchedulePage extends StatelessWidget {
  const AddSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('새로운 할 일'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        actions: [],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(labelText: '제목을 적어주세요', border: OutlineInputBorder()),
                ),
              ),
              Expanded(
                flex: 3,
                child: Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Icon(Icons.calendar_month_outlined)),
                            Expanded(child: Text('날짜')),
                            Expanded(
                              child: TextButton(onPressed: () {}, child: Text('오늘')),
                            ),
                          ],
                        ),
                      ),
                      Divider(height: 1),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Icon(Icons.watch_later_outlined)),
                            Expanded(child: Text('시간')),
                            Expanded(
                              child: TextButton(onPressed: () {}, child: Text('시간 선택')),
                            ),
                          ],
                        ),
                      ),
                      Divider(height: 1),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Icon(Icons.wb_sunny)),
                            Expanded(child: Text('하루 종일')),
                            Expanded(
                              child: TextButton(onPressed: () {}, child: Text('오늘')),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Icon(Icons.alarm_rounded)),
                            Expanded(child: Text('알림')),
                            Expanded(
                              child: TextButton(onPressed: () {}, child: Text('알림')),
                            ),
                          ],
                        ),
                      ),
                      Divider(height: 1),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(child: Icon(Icons.repeat)),
                            Expanded(child: Text('반복')),
                            Expanded(
                              child: TextButton(onPressed: () {}, child: Text('반복')),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(hintText: '메모를 입력하세요', border: OutlineInputBorder()),
                  maxLines: 6,
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(onPressed: () {}, child: Text('저장')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
