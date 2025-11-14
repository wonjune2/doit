import 'package:doit/features/schedule/pages/schedule_detail_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doit'),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime.utc(2020, 01, 01),
                lastDate: DateTime.utc(2200, 12, 31),
                onDateChanged: (value) {},
              ),
            ),
            Divider(thickness: 1, color: Colors.grey, height: 20),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Octorver 26, Thursday',
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          ListTile(
                            leading: Checkbox(value: false, onChanged: (value) {}),
                            title: Text(
                              'schedule title 1',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'schedule subtitle 1',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ScheduleDetailPage()),
                              );
                            },
                          ),
                          ListTile(
                            leading: Checkbox(value: false, onChanged: (value) {}),
                            title: Text(
                              'schedule title 1',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          ListTile(
                            leading: Checkbox(value: false, onChanged: (value) {}),
                            title: Text(
                              'schedule title 1',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('schedule subtitle 1'),
                          ),
                          ListTile(
                            leading: Checkbox(value: false, onChanged: (value) {}),
                            title: Text(
                              'schedule title 1',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('schedule subtitle 1'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
    );
  }
}
