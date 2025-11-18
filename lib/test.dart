import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 200, color: Colors.amber),
          Expanded(child: Container(height: 200, color: Colors.blue)),
          Flexible(child: Container(height: 200, color: Colors.green)),
        ],
      ),
    );
  }
}
