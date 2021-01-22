import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: PerubahanText(text:"Hello world!"), // Ubah widget Heading ke PerubahanText
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;
  Heading({Key key, this.text});
  @override
  Widget build(BuildContext context){
    return Text(text, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold));
  }
}