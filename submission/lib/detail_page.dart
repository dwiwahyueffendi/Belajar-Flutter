import 'package:flutter/material.dart';

var informationTextStyle = TextStyle(
  fontFamily: 'Anton',
);

var informationTextStyle1 = TextStyle(
  fontFamily: 'FjallaOne',
);

class DetailScreen extends StatelessWidget {
  final String name;
  final String pict;
  final String desc;

  DetailScreen(
      this.name,
      this.pict,
      this.desc
  );

  @override
  Widget build(BuildContext context) {
    Widget SectionPicture = Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Image.asset(
          pict,
          fit: BoxFit.cover,
        ),
      ),
    );

    Widget SectionName = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: TextStyle(
            //fontFamily: 'Anton',
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black
        ),
      ),
    );

    Widget SectionDescription = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        desc,
        textAlign: TextAlign.justify,
        style: TextStyle(
            //fontFamily: 'FjallaOne',
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black
        )
      ),
    );

    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.yellow[400],
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Detail University',
          style: TextStyle(
              //fontFamily: 'Anton',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[SectionPicture, SectionName, SectionDescription],
      ),
    );
  }
}