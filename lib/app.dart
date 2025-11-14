import 'package:doit/features/schedule/pages/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, title: 'Doit', home: Home());
  }
}
