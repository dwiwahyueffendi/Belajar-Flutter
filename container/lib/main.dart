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
      home: FirstScreen(),// Panggil FirstScreen di sini

    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white,),
          )
        ],
      ),
      body: Container(
        child: Text(
            'Hi',
            style: TextStyle(
              fontSize: 80,
              color: Colors.black,
            )
        ),
        color: Colors.yellow,
        //width: 200,                   //Membuat Width
        //height: 200,                  //Membuat Height
        //padding: EdgeInsets.all(20),  //Membuat Padding
        margin: EdgeInsets.all(20),     //Membuat Margin
      ),
    );
  }
}