import 'package:flutter/material.dart';
import 'package:duan2/Model/Message.dart';

class TinNhanPage extends StatefulWidget {
  @override
  _TinNhanPageState createState() => _TinNhanPageState();
}

final List<Message> messages = [
  Message(
      from: '[Phòng Đào Tạo]',
      day: '[10/10/2020]',
      content: 'Thông báo sinh viên ....'),
  Message(
      from: '[Phòng CTHSSV]',
      day: '[10/10/2020]',
      content: 'thông báo về môn học dự án công nghệ thông tin 2'),
  Message(
      from: '[Phòng Đào Tạo]',
      day: '[10/10/2020]',
      content: 'Lịch học của em đã bị hủy'),
  Message(
      from: '[Phòng Tài Chính]',
      day: '[10/10/2020]',
      content: 'Cảnh báo sinh viên có mã số 51503121 đã vắng 2 buổi'),
  Message(
      from: '[Phòng CTHSSV]', day: '[10/10/2020]', content: 'Cảnh báo học vụ'),
  Message(
      from: '[Phòng Đào Tạo]',
      day: '[10/10/2020]',
      content: '.....'),
  Message(
      from: '[Phong tài chính]',
      day: '[10/10/2020]',
      content: 'thông báo thời hạn cuối cùng đóng học phí lần 3....'),
  Message(
      from: '[Khoa CNTT]',
      day: '[10/10/2020]',
      content: 'Thông báo đang ký thành công môn dự án công nghệ thông tin 2'),
  Message(
      from: '[Khoa CNTT ]',
      day: '[10/10/2020]',
      content: 'Mới sinh viên Ngô Quang Khánh , MSSV : 51503121 .....'),
  Message(
      from: '[Phòng CTHSSV]',
      day: '[10/10/2020]',
      content: 'Cảnh báo học vụ sinh viên . . ...'),
];

class _TinNhanPageState extends State<TinNhanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData.fallback(),
          backgroundColor: Colors.red,
          title: Text(
            'Tin Nhắn',
            style: TextStyle(
                fontFamily: 'indieFlower',
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
                color: Colors.black
            ),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            _buildBackGroundRed(),
            _buildBackGroundWhite(),
            Container(
              margin: EdgeInsets.only(bottom: 75.0),
              child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) =>
                      buildListMessage(context, index)),
            ),
          ],
        ));
  }

  buildListMessage(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        print('Show noi dung thong bao');
        Navigator.pushNamed(context, '/show_thongbao');
      },
      child: new Container(
          child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      messages[index].from,
                      style:
                          TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold

                          ),
                    ),
                    Text(messages[index].day ,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.red
                    ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1.0, bottom: 1.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(messages[index].content ,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black
                  ),),
                ),
              ),
            ],
          ),
        ),
      )),
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
