import 'package:flutter/material.dart';
import 'package:duan2/Model/thongbao.dart';
import 'package:duan2/src/MenuSrceen.dart';


class ThongBaoPage extends StatefulWidget {
  @override
  _ThongBaoPageState createState() => _ThongBaoPageState();
}

final List<ThongBao> thongbaos = [
  ThongBao(
      title: 'KẾT QUẢ XÉT HỌC VỤ SV TỐT NGHIỆP THÁNG 4',
      day: '[1/4/2020]',
      nguoigui: '[Phòng Đại Học]',
      noidung: 'abc'),
  ThongBao(
      title: 'Đưa robot khử khuẩn của ĐH Tôn Đức Thắng vào hoạt động khu cách ly',
      day: '[2/4/2020]',
      nguoigui: '[Phòng CTHSSV]',
      noidung: 'abc'),
  ThongBao(
      title: 'THÔNG BÁO V/v điều chỉnh kế hoạch tót nghiệp Đợt tháng 04/2020',
      day: '[3/4/2020]',
      nguoigui: '[Phòng CTHSSV]',
      noidung: 'abc'),
  ThongBao(
      title: 'Về việc tạm thời dừng cấp bảng điểm, giấy xác nhận hoàn thành khóa học từ 31/03/2020',
      day: '[4/4/2020]',
      nguoigui: '[Phòng Đại Học]',
      noidung: 'abc'),
  ThongBao(
      title: 'THÔNG BÁO về việc tiếp tục tạm dừng tập trung học tại các cơ sở của trường đến hết ngày 3/5/2020',
      day: '[5/4/2020]',
      nguoigui: '[Phòng CTHSSV]',
      noidung: 'abc'),
  ThongBao(
      title: 'THÔNG BÁO VỀ VIỆC NỘP HỌC PHÍ CHƯƠNG TRÌNH SAU ĐẠI HỌC ĐỢT THÁNG 02/2020',
      day: '[6/4/2020]',
      nguoigui: '[Phòng Tài Chính]',
      noidung: 'abc'),
  ThongBao(
      title: '[CHÍNH THỨC] Về việc tạm hoãn thực hiện kế hoạch thu học phí TSNN/KLTN/Môn thay thế tốt nghiệp đợt 1B và môn Kỹ năng thực hành chuyên môn đợt 1A',
      day: '[7/4/2020]',
      nguoigui: '[Phòng Đại Học]',
      noidung: 'abc'),
  ThongBao(
      title: 'THÔNG BÁO VỀ VIỆC HOÃN TỔ CHỨC KỲ THI TỐT NGHIỆP ĐỢT TỐT NGHIỆP THÁNG 04/2020',
      day: '[8/4/2020]',
      nguoigui: '[Phòng Đại Học]',
      noidung: 'abc'),
  ThongBao(
      title: '[THÔNG BÁO] - CẬP NHẬT LỊCH HỌC - PHÒNG HỌC MÔN TIẾNG ANH - HK2/2019-2020',
      day: '[9/4/2020]',
      nguoigui: '[Phòng Đại Học]',
      noidung: 'abc'),
  ThongBao(
      title: 'THÔNG BÁO VỀ VIỆC HỌC MÔN BƠI CỦA SINH VIÊN',
      day: '[10/4/2020]',
      nguoigui: '[Phòng CTHSSV]',
      noidung: 'abc'),
];

class _ThongBaoPageState extends State<ThongBaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData.fallback(),
        backgroundColor: Colors.red,
        title: Text(
          'Thông Báo',
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
          _buildBackGroundWhite(),
          Container(
            margin: EdgeInsets.only(bottom: 75.0),
            child: ListView.builder(
                itemCount: thongbaos.length,
                itemBuilder: (BuildContext context, int index) =>
                    buildListThongbao(context, index)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
      ),
    );
  }

// List Thong Bao
  Widget buildListThongbao(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        print('Show noi dung thong bao');
        Navigator.pushNamed(context, '/show_thongbao');
      },
      child: new Container(
          child: Card(
        borderOnForeground: true,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 5.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    thongbaos[index].title,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1.0, bottom: 0.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      thongbaos[index].nguoigui,
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      thongbaos[index].day,
                      style: TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 13.0 , fontWeight: FontWeight.bold),
                    )
                  ],
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