import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'PottaoOne',
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),// Panggil FirstScreen di sini

    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Text(
        'Custom Font',
        style: TextStyle(
          fontFamily: 'PottaOne',
          fontSize: 30,
        ),
      ),
    );
  }
}