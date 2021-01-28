import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Rainbow(),// Panggil FirstScreen di sini

    );
  }
}

class Rainbow extends StatefulWidget {
  @override
  _RainbowState createState() => _RainbowState();
}

class _RainbowState extends State<Rainbow> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(     //Dibagi rata
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.orange,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.indigo,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}