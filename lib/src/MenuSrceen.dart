import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData.fallback(),
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Menu Page',
          style: TextStyle(
              fontFamily: 'indieFlower',
              fontWeight: FontWeight.normal,
              fontSize: 30.0,
              color: Colors.black),
        ),
      ),
      body: Stack(
        children: <Widget>[
          _buildBackGroundRed(),
          _buildBackGroundWhite(),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _buildNotification() ,
                  _buildMessages()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _buildSchelude() ,
                  _buildTuition()
                ],
              ),
            ],
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
      height: 500.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(
            bottomLeft: const Radius.circular(50),
            bottomRight: const Radius.circular(50)),
      ),
    );
  }

  // build Item Notification
  Widget _buildNotification() {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/thongbao');
      },
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30.0),
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1
                ),
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                    topRight: const Radius.circular(20),
                    topLeft: const Radius.circular(20),
                    bottomLeft: const Radius.circular(20),
                    bottomRight: const Radius.circular(20))),
            height: 200.0,
            width: 180.0,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.notifications,
                        color: Colors.red,
                        size: 140.0,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'Thông Báo',
                      style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'indieFlower'),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  // build Messages
  Widget _buildMessages() {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context,'/tinnhan');
      },
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 1
                ),
                borderRadius: new BorderRadius.only(
                    topRight: const Radius.circular(20),
                    topLeft: const Radius.circular(20),
                    bottomLeft: const Radius.circular(20),
                    bottomRight: const Radius.circular(20))),
            height: 200.0,
            width: 180.0,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.message,
                        color: Colors.red,
                        size: 140.0,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'Tin Nhắn',
                      style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'indieFlower'),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

// build Schelude
  Widget _buildSchelude() {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context,'/lichhoc');
      },
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 1
                ),
                borderRadius: new BorderRadius.only(
                    topRight: const Radius.circular(20),
                    topLeft: const Radius.circular(20),
                    bottomLeft: const Radius.circular(20),
                    bottomRight: const Radius.circular(20))),
            height: 200.0,
            width: 180.0,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.schedule,
                        color: Colors.red,
                        size: 140.0,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'Lịch Học',
                      style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'indieFlower'),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }


// build Tuition
  Widget _buildTuition() {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context,'/hocphi');
      },
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 1
                ),
                borderRadius: new BorderRadius.only(
                    topRight: const Radius.circular(20),
                    topLeft: const Radius.circular(20),
                    bottomLeft: const Radius.circular(20),
                    bottomRight: const Radius.circular(20))),
            height: 200.0,
            width: 180.0,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.monetization_on,
                        color: Colors.red,
                        size: 140.0,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'Học Phí',
                      style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'indieFlower'),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



