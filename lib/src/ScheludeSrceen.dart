import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:duan2/Model/Schedule.dart';

class LichHocPage extends StatefulWidget {
  @override
  _LichHocPageState createState() => _LichHocPageState();
}

class _LichHocPageState extends State<LichHocPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.navigate_next , color: Colors.white,)),
              Tab(icon: Icon(Icons.navigate_next , color: Colors.white)),
              Tab(icon: Icon(Icons.navigate_next , color: Colors.white)),
            ],
          ),
          iconTheme: IconThemeData.fallback(),
          backgroundColor: Colors.red,
          title: Text(
            'Lịch Học',
            style: TextStyle(
                fontFamily: 'indieFlower',
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
                color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: <Widget>[
            _buildSrceenDay23(),
            _buildSrceenDay45(),
            _buildSrceenDay67()
          ],
        ),
      ),
    );
  }
}

/// build Srceen ngày thứ 2 , thứ 3 trong 1 tab
Widget _buildSrceenDay23(){
  return Stack(
    children: <Widget>[
      _buildBackGroundRed(),
      _buildBackGroundWhite(),
      _buildScheludeDay23()
    ],
  );
}
/// build Srceen ngày thứ 4 , thứ 5 trong 1 tab
Widget _buildSrceenDay45(){
  return Stack(
    children: <Widget>[
      _buildBackGroundRed(),
      _buildBackGroundWhite(),
      _buildScheludeDay45()
    ],
  );
}
/// build Srceen ngày thứ 6 , thứ 7 trong 1 tab
Widget _buildSrceenDay67(){
  return Stack(
    children: <Widget>[
      _buildBackGroundRed(),
      _buildBackGroundWhite(),
      _buildScheludeDay67()
    ],
  );
}




/// build  TKB thứ 2 thư 3
Widget _buildScheludeDay23() {
  return Center(
    child: Container(
      margin: EdgeInsets.only(bottom: 10.0),
      alignment: Alignment.topLeft,
      height: 500,
      width: 380,
      decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(20.0),
          border: Border.all(width: 1)),
      child: Column(
        children: <Widget>[
          _buildDay23(),
          _buildShiftBS23(),
          _buildShiftBC23()

        ],
      ),
    ),
  );
}
/// build TBK thứ 4 thứ 5
Widget _buildScheludeDay45() {
  return Center(
    child: Container(
      margin: EdgeInsets.only(bottom: 10.0),
      alignment: Alignment.topLeft,
      height: 500,
      width: 380,
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(20.0),
          border: Border.all(width: 1)),
      child: Column(
        children: <Widget>[
          _buildDay45(),
          _buildShiftBS45(),
          _buildShiftBC45()

        ],
      ),
    ),
  );
}
/// build TBK thứ 4 thứ 5
Widget _buildScheludeDay67() {
  return Center(
    child: Container(
      margin: EdgeInsets.only(bottom: 10.0),
      alignment: Alignment.topLeft,
      height: 500,
      width: 380,
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(20.0),
          border: Border.all(width: 1)),
      child: Column(
        children: <Widget>[
          _buildDay67(),
          _buildShiftBS67(),
          _buildShiftBC67()

        ],
      ),
    ),
  );
}




/// build Row1 ( thứ ngày)
Widget _buildDay23(){
  return Row(
    children: <Widget>[
      Expanded(
        flex: 1,
        child: Container(
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.indigo, border: Border.all(width: 1)),
            child: Text(
              '',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: 'indieFlower',
                  color: Colors.white),
            )),
      ),
      Expanded(
        flex: 3,
        child: Container(
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue[400], border: Border.all(width: 1)),
            child: Text(
              'Thứ 2',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: 'indieFlower',
                  color: Colors.white),
            )),
      ),
      Expanded(
        flex: 3,
        child: Container(
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue[400], border: Border.all(width: 1)),
            child: Text(
              'Thứ 3',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: 'indieFlower',
                  color: Colors.white),
            )),
      ),
    ],
  );
}
/// build Row1 ( thứ ngày)
Widget _buildDay45(){
  return Row(
    children: <Widget>[
      Expanded(
        flex: 1,
        child: Container(
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.indigo, border: Border.all(width: 1)),
            child: Text(
              '',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: 'indieFlower',
                  color: Colors.white),
            )),
      ),
      Expanded(
        flex: 3,
        child: Container(
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue[400], border: Border.all(width: 1)),
            child: Text(
              'Thứ 4',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: 'indieFlower',
                  color: Colors.white),
            )),
      ),
      Expanded(
        flex: 3,
        child: Container(
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue[400], border: Border.all(width: 1)),
            child: Text(
              'Thứ 5',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: 'indieFlower',
                  color: Colors.white),
            )),
      ),
    ],
  );
}
/// build Row1 ( thứ ngày)
Widget _buildDay67(){
  return Row(
    children: <Widget>[
      Expanded(
        flex: 1,
        child: Container(
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.indigo, border: Border.all(width: 1)),
            child: Text(
              '',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: 'indieFlower',
                  color: Colors.white),
            )),
      ),
      Expanded(
        flex: 3,
        child: Container(
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue[400], border: Border.all(width: 1)),
            child: Text(
              'Thứ 6',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: 'indieFlower',
                  color: Colors.white),
            )),
      ),
      Expanded(
        flex: 3,
        child: Container(
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue[400], border: Border.all(width: 1)),
            child: Text(
              'Thứ 7',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: 'indieFlower',
                  color: Colors.white),
            )),
      ),
    ],
  );
}



/// build ca học buổi sáng thứ 2,thứ 3
Widget _buildShiftBS23(){
  return Container(
    height: 228.0,
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue[400], border: Border.all(width: 1)),
              child: Text(
                'Buổi sáng',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'indieFlower',
                    color: Colors.white),
              )),
        ),

        /// Sáng thứ 2
        Expanded(
          flex: 3,
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.red, border: Border.all(width: 1)),
              child: Column(
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      Text(
                        '- Hệ cơ sở dữ liệu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Nhóm 12 , Ca 1 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Phòng B510',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Tuần 12345',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      )
                    ],
                  ),
                ],
              )),
        ),

        /// sáng thứ 3
        Expanded(
          flex: 3,
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(width: 1)),
              child: Text(
                'Thứ 3',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'indieFlower',
                    color: Colors.white),
              )),
        ),
      ],
    ),
  );
}
/// build ca học buổi chiều thứ 2 ,thứ 3
Widget _buildShiftBC23(){
  return Container(
    height: 230.0,
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue[400], border: Border.all(width: 1)),
              child: Text(
                'Buổi Chiều',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'indieFlower',
                    color: Colors.white),
              )),
        ),
        /// Chiều thứ 2
        Expanded(
          flex: 3,
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(width: 1)),
              child: Text(
                'Thứ 2',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'indieFlower',
                    color: Colors.white),
              )),
        ),

        /// custom chiều thứ 3
        Expanded(
          flex: 3,
          child: Container(
              padding: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.indigo, border: Border.all(width: 1)),
              child: Column(
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      Text(
                        '- Nhập môn các hệ thống phân tán',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Nhóm 14 , Ca3 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Phòng C202',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Tuần 12345',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              )),
        ),
      ],
    ),
  );
}



///build ca học buối sáng thứ 4 , sáng thứ 4
Widget _buildShiftBS45(){
  return Container(
    height: 228.0,
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue[400], border: Border.all(width: 1)),
              child: Text(
                'Buổi sáng',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'indieFlower',
                    color: Colors.white),
              )),
        ),

        /// Sáng thứ 4
        Expanded(
          flex: 3,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(width: 1)),
              child: Column(
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      Text(
                        '- Hệ cơ sở dữ liệu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      )
                    ],
                  ),
                  Wrap(
                    children: <Widget>[
                      Text(
                        '- Nhóm 12 , Ca 1 , Phòng B510',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      )
                    ],
                  ),
                  Wrap(
                    children: <Widget>[
                      Text(
                        '- Tuần 12345',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              )),
        ),

        /// sáng thứ 5
        Expanded(
          flex: 3,
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(width: 1)),
              child: Text(
                'Thứ 3',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'indieFlower',
                    color: Colors.white),
              )),
        ),
      ],
    ),
  );
}
/// build ca học buổi chiều thứ 4 , chiều thứ 5
Widget _buildShiftBC45(){
  return Container(
    height: 230.0,
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue[400], border: Border.all(width: 1)),
              child: Text(
                'Buổi Chiều',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'indieFlower',
                    color: Colors.white),
              )),
        ),
        /// Chiều thứ 4
        Expanded(
          flex: 3,
          child: Container(
              padding: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent, border: Border.all(width: 1)),
              child: Column(
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      Text(
                        '- Thực hành Giao thức và Mạng máy tính',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Nhóm 14 , Ca4 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Phòng A502',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Tuần 12345',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              )
          ),
        ),

        /// custom chiều thứ 5
        Expanded(
          flex: 3,
          child: Container(
              padding: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.indigo, border: Border.all(width: 1)),
              child: Column(
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      Text(
                        '- Nhập môn các hệ thống phân tán',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Nhóm 10 , Ca3 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Phòng B202',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Tuần 12345',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              )),
        ),
      ],
    ),
  );
}



/// build ca học buối sáng thứ 6 , sáng thứ 7
Widget _buildShiftBS67(){
  return Container(
    height: 228.0,
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue[400], border: Border.all(width: 1)),
              child: Text(
                'Buổi sáng',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'indieFlower',
                    color: Colors.white),
              )),
        ),

        /// Sáng thứ 6
        Expanded(
          flex: 3,
          child: Container(
              padding: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent, border: Border.all(width: 1)),
              child: Column(
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      Text(
                        '- Cấu trúc dữ liệu và giải thuật',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Nhóm 15 , Ca 2 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Phòng B410',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Tuần 12345',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      )
                    ],
                  ),

                ],
              )),
        ),

        /// sáng thứ 7
        Expanded(
          flex: 3,
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(width: 1)),
              child: Text(
                'Thứ 3',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'indieFlower',
                    color: Colors.white),
              )),
        ),
      ],
    ),
  );
}
/// build ca học buổi chiều thứ 6 , chiều thứ 7
Widget _buildShiftBC67(){
  return Container(
    height: 230.0,
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue[400], border: Border.all(width: 1)),
              child: Text(
                'Buổi Chiều',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'indieFlower',
                    color: Colors.white),
              )),
        ),
        /// Chiều thứ 6
        Expanded(
          flex: 3,
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(width: 1)),
              child: Column(
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      Text(
                        '- Thực hành Giao thức và Mạng máy tính',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Nhóm 14 , Ca4 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Phòng A502',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Tuần 12345',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              )
          ),
        ),

        /// custom chiều thứ 7
        Expanded(
          flex: 3,
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.indigo, border: Border.all(width: 1)),
              child: Column(
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      Text(
                        '- Xử lý ảnh',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Nhóm 10 , Ca 3 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Phòng B602',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      ),
                      Text(
                        '- Tuần 12345',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            fontFamily: 'indieFlower',
                            color: Colors.white),
                      )
                    ],
                  )
                ],
              )),
        ),
      ],
    ),
  );
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