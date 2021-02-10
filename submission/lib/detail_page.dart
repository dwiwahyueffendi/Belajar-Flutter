import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String nama;
  final String gambar;
  final String deskripsi;

  DetailScreen(
      this.nama,
      this.gambar,
      this.deskripsi
  );

  @override
  Widget build(BuildContext context) {
    //bagian banner ganmbar
    Widget bagianGambar = Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Image.asset(
          gambar,fit: BoxFit.cover,
        ),
      ),
    );

    //bagian title
    Widget bagianTitle = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        nama,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
      ),
    );

    //bagian diskripsi
    Widget bagianDiskripsi = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        deskripsi,
        style: TextStyle(color: Colors.black),
        textAlign: TextAlign.justify,
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
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[bagianGambar, bagianTitle, bagianDiskripsi],
      ),
    );
  }
}
