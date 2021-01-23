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
        decoration: BoxDecoration(
          color: Colors.yellow,
          //shape: BoxShape.circle,         //Membuat Circle
          /*boxShadow: [                    //Membuat Shadow
            BoxShadow(
              color: Colors.black,
              offset: Offset(1/*Horizontal*/, 1/*Vertical*/),
              blurRadius: 10,
            )
          ],*/
          border: Border.all(
            color: Colors.black,
            width: 9, //Ketebalan Border
          ),
          borderRadius: BorderRadius.circular(30),   //Border Circular
        ),
      ),
    );
  }
}