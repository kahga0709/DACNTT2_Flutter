import 'package:flutter/material.dart';

class HocPhiPage extends StatefulWidget {
  @override
  _HocPhiPageState createState() => _HocPhiPageState();
}

class _HocPhiPageState extends State<HocPhiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        backgroundColor: Colors.red,
        title: Text(
          'Học Phí',
          style: TextStyle(
              fontFamily: 'indieFlower',
              fontSize: 30.0,
              fontWeight: FontWeight.normal,
              color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          _buildBackGroundRed(),
          _buildBackGroundWhite()
        ],
      ),
    );
  }
}


// build background white
Widget _buildBackGroundRed() {
  return Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFFFB415B), Color(0xFFEE5623)],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft)),
  );
}

// build background red
Widget _buildBackGroundWhite() {
  return Container(
    height: 560.0,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: new BorderRadius.only(
          bottomLeft: const Radius.circular(50),
          bottomRight: const Radius.circular(50)),
    ),
  );
}
