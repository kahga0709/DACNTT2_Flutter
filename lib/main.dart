
import 'package:flutter/material.dart';
import 'package:duan2/src/NotificationSrceen.dart';
import 'package:duan2/src/MessageSrceen.dart';
import 'package:duan2/src/ScheludeSrceen.dart';
import 'package:duan2/src/TuitionScreen.dart';
import 'package:duan2/Database/show_noidung_thongbao.dart';
import 'package:duan2/src/LoginSrceen.dart';
import 'package:duan2/src/MenuSrceen.dart';






void main() => runApp(MaterialApp(
  initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/menu' :(context) => MenuPage() ,
        '/thongbao' :(context) => ThongBaoPage(),
        '/tinnhan': (context) => TinNhanPage(),
        '/lichhoc': (context) => LichHocPage(),
        '/hocphi': (context) => HocPhiPage(),
        '/show_thongbao':(context) => ShowThongBao(),

      },
    ));

