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
      body:
      /*Center(     //Menggunakan CDN Netword
        child: Image.network(
          'https://i.icanvas.com/LEA64?d=3&sh=h&p=1&s=xl&bg=g',   //Link Gambar
          width: 400,
          height: 400,
        ),
      ),*/
      Center(      //Menggunakan Image.asset
        child: Image.asset('images/MyRainyDance.jpg', width: 400, height: 600),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}