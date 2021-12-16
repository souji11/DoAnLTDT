import 'package:flutter/material.dart';
import 'page-dangnhap.dart';

class PageQuenMatKhau extends StatefulWidget {
  const PageQuenMatKhau({Key? key}) : super(key: key);

  @override
  _PageQuenMatKhau createState() => _PageQuenMatKhau();
}

class _PageQuenMatKhau extends State<PageQuenMatKhau> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/qmk2.jpg'), fit: BoxFit.cover),
          ),
          child: Center(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(50),
                  child:
                      Image.asset('images/logo.png', height: 100, width: 350),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Quên mật khẩu",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.login),
                      labelText: "Tải khoản",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Lấy mã OTD"),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.mail),
                      labelText: "Nhập mã OTD",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.password),
                          labelText: "Nhập mật khẩu mới",
                        ),
                      ),
                      Icon(Icons.remove_red_eye),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.password),
                          labelText: "Xác nhận lại mật khẩu mới",
                        ),
                      ),
                      Icon(Icons.remove_red_eye),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Đổi mật khẩu"),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageDangNhap()));
                          },
                          child: Image.asset(
                            'images/back.png',
                            height: 20,
                            width: 20,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
