import 'package:flutter/material.dart';
import 'page/page-dangnhap.dart';
import 'page/page-dangky.dart';
import 'page/page-quenmatkhau.dart';
import 'page/page-binhluan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PageDangNhap(),
      // home: PageBinhLuan(),
    );
  }
}
