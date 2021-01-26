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
  TextEditingController _controller = TextEditingController();    //TextField
  String _email = '';   //onChanged
  bool lightOn = false; //Switch
  String language;      //Radio
  bool agree = false;   //Checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body:
      /*TextField(      //Menggunakan TextField
        controller: _controller,
      )*/
      /*TextField(    //Menggunakan onChanged
        onChanged: (String value) {   //Akan bekerja setiap ada perubahan pada input
          setState(() {
            _email = value;
          });
        },
      ),*/
      /*Switch(       //Menggunakan Widget
        value: lightOn,
        onChanged: (bool value) {
          setState(() {
            lightOn = value;
          });
        },
      ),*/
      /*Column(     //Menggunakan Radio
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Radio<String>(
              value: 'Dart',
              groupValue: language,
              onChanged: (String value) {
                setState(() {
                  language = value;
                });
              },
            ),
            title: Text('Dart'),
          ),
          ListTile(
            leading: Radio<String>(
              value: 'Kotlin',
              groupValue: language,
              onChanged: (String value) {
                setState(() {
                  language = value;
                });
              },
            ),
            title: Text('Kotlin'),
          ),
          ListTile(
            leading: Radio<String>(
              value: 'Swift',
              groupValue: language,
              onChanged: (String value) {
                setState(() {
                  language = value;
                });
              },
            ),
            title: Text('Swift'),
          ),
        ],
      ),*/
      ListTile(     //Menggunakan Checkbox
        leading: Checkbox(
          value: agree,
          onChanged: (bool value) {
            setState(() {
              agree = value;
            });
          },
        ),
        title: Text('Agree / Disagree'),
      ),
    );
  }
}