import 'package:flutter/material.dart';
import 'package:submission/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Submission Flutter',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MainScreen(),
    );
  }
}