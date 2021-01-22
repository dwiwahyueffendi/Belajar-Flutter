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

class PerubahanText extends StatefulWidget {

  final String text;

  const PerubahanText({Key key, this.text}) : super(key: key);

  @override
  _PerubahanTextState createState() => _PerubahanTextState();
}

class _PerubahanTextState extends State<PerubahanText> {
  double _ukuranText = 16.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _ukuranText)),
        RaisedButton(
          child: Text("Perbesar"),
          onPressed: (){
            setState(() {
              _ukuranText = 32.0;
            });
          },
        )
      ],
    );
  }
}