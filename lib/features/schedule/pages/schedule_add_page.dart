import 'package:flutter/material.dart';

class ScheduleAddPage extends StatefulWidget {
  const ScheduleAddPage({super.key});

  @override
  State<ScheduleAddPage> createState() => _ScheduleAddPageState();
}

class _ScheduleAddPageState extends State<ScheduleAddPage> {
  GlobalKey keyTextField = GlobalKey();
  double textFieldHeight = 0;

  void _currentTextFieldHeights() {
    final currentHeight = keyTextField.currentContext?.size?.height;
    if (currentHeight != null && currentHeight != textFieldHeight) {
      setState(() {
        textFieldHeight = currentHeight;
      });
    }
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _currentTextFieldHeights();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새로운 할 일'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
        actions: [TextButton(onPressed: () {}, child: const Text('저장'))],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8.0),
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // 제목
                    TextField(
                      decoration: const InputDecoration(
                        labelText: '제목을 적어주세요',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 8),

                    // 날짜 / 시간 / 하루 종일 카드
                    Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.calendar_month_outlined),
                            title: const Text('날짜'),
                            trailing: TextButton(onPressed: () {}, child: const Text('오늘')),
                          ),
                          const Divider(height: 1),
                          ListTile(
                            leading: const Icon(Icons.watch_later_outlined),
                            title: const Text('시간'),
                            trailing: TextButton(onPressed: () {}, child: const Text('시간 선택')),
                          ),
                          const Divider(height: 1),
                          ListTile(
                            leading: const Icon(Icons.wb_sunny),
                            title: const Text('하루 종일'),
                            trailing: TextButton(onPressed: () {}, child: const Text('설정')),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),

                    // 알림 / 반복 카드
                    Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.alarm_rounded),
                            title: const Text('알림'),
                            trailing: TextButton(onPressed: () {}, child: const Text('알림')),
                          ),
                          const Divider(height: 1),
                          ListTile(
                            leading: const Icon(Icons.repeat),
                            title: const Text('반복'),
                            trailing: TextButton(onPressed: () {}, child: const Text('반복')),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),

                    // 메모
                    TextField(
                      key: keyTextField,
                      decoration: const InputDecoration(
                        hintText: '메모를 입력하세요',
                        border: OutlineInputBorder(),
                      ),
                      scrollPadding: EdgeInsets.only(bottom: textFieldHeight),
                      maxLines: 6,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
