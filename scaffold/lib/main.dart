import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: FirstScreen(),// Panggil FirstScreen di sini

    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black,),
        ),
        title: Text('Home Screen'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black,),
          )
        ],
      ),
      body: Center(
        child: Heading(
            text: 'Hello world!',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.black,),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  Heading({Key key, this.text});

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}