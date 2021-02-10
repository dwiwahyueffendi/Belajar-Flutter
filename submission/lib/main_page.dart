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
      final String nama = university['nama'];
      final String gambar = university['gambar'];
      final String deskripsi = university['deskripsi'];

      listDataUniversity.add(
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(nama, gambar, deskripsi);
              }));
            },
            child: Card(
              color: Colors.yellow,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      gambar,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(nama)
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
