import 'package:flutter/material.dart';
import 'package:duan2/Model/thongbao.dart';
import 'package:duan2/src/NotificationSrceen.dart';

class ShowThongBao extends StatefulWidget {
  @override
  _ShowThongBaoState createState() => _ShowThongBaoState();
}

class _ShowThongBaoState extends State<ShowThongBao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        backgroundColor: Colors.red,
        title: Text(
          'Chi tiết thông báo',
          style: TextStyle(
            fontFamily: 'indieFlower',
            fontWeight: FontWeight.normal,
            fontSize: 30.0,
            color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          _buildBackGroundRed(),
          _buildBackGroundWhite() ,
          ListView.builder(
              itemCount: thongbaos.length,
              itemBuilder: (BuildContext context, int index) =>
                  buildContentNotification(context, index)),
        ],
      ),
    );
  }

  Widget buildContentNotification(BuildContext context, int index) {
    return Container(
      child: Text(thongbaos[index].noidung),
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
