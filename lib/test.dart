import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final keyTextField = GlobalKey();
  final focusNode = FocusNode();
  double textFieldHeight = 0;

  @override
  void initState() {
    super.initState();

    // layout 완료 후 높이 측정
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      final size = keyTextField.currentContext?.size;
      if (size != null) {
        setState(() {
          textFieldHeight = size.height;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          Container(height: 400, color: Colors.blue),
          const SizedBox(height: 16),

          LayoutBuilder(
            builder: (context, constraints) {
              final size = constraints.maxHeight;
              print("size: $size");
              return TextField(
                maxLines: 4,
                decoration: const InputDecoration(border: OutlineInputBorder(), hintText: "내용 입력"),

                /// 💡 여기서 TextField 높이를 scrollPadding에 반영
                scrollPadding: EdgeInsets.only(bottom: textFieldHeight),
              );
            },
          ),
        ],
      ),
    );
  }
}
