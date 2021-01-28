import 'package:flutter/material.dart';
import 'package:codelab2/detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData.dark(),
      home: DetailScreen(),
    );
  }
}