import 'package:flutter/material.dart';
import 'package:submission/data_page.dart';
import 'package:submission/detail_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  _buatListUniversity() async {
    for (var i = 0; i < University.length; i++) {
      final university = University[i];
      final String name = university['name'];
      final String pict = university['pict'];
      final String desc = university['desc'];

      listDataUniversity.add(
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(name, pict, desc);
              }));
            },
            child: Card(
              color: Colors.yellow,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      pict,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _buatListUniversity();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
          backgroundColor: Colors.yellow[400],
          title: Text(
            'Top 10 University',
            style: TextStyle(
                fontFamily: 'Anton',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black
            ),
          )),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        childAspectRatio: 1,
        children: listDataUniversity,
      ),
    );
  }
}