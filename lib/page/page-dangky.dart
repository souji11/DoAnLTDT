import 'package:flutter/material.dart';
import 'page-dangnhap.dart';

class PageDangKy extends StatefulWidget {
  const PageDangKy({Key? key}) : super(key: key);

  @override
  _PageDangKy createState() => _PageDangKy();
}

class _PageDangKy extends State<PageDangKy> {
  bool isPassWord = true;

  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/dk2.jpg'), fit: BoxFit.cover),
          ),
          child: Center(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child:
                      Image.asset('images/logo.png', height: 100, width: 350),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Đăng ký",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(3),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.login),
                      labelText: "Tải khoản",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(3),
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
                  padding: EdgeInsets.all(3),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.mail),
                      labelText: "Nhập mã OTD",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(3),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.password),
                          labelText: "Nhập mật khẩu",
                        ),
                      ),
                      Icon(Icons.remove_red_eye),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(3),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.password),
                          labelText: "Xác nhận lại mật khẩu",
                        ),
                      ),
                      Icon(Icons.remove_red_eye),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: checkbox1,
                      onChanged: (value) {
                        setState(() {
                          checkbox1 = !checkbox1;
                        });
                      },
                    ),
                    const Text("Điều khoản 1"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: checkbox2,
                      onChanged: (value) {
                        setState(() {
                          checkbox2 = !checkbox2;
                        });
                      },
                    ),
                    const Text("Điều khoản 2"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: checkbox3,
                      onChanged: (value) {
                        setState(() {
                          checkbox3 = !checkbox3;
                        });
                      },
                    ),
                    const Text("Điều khoản 3"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(3),
                  child: SizedBox(
                    width: double.infinity,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Đăng ký"),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                      "----------------------------------------------------------------------------------------------"),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: SizedBox(
                    height: 30,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text(
                        "Đăng nhập Facebook",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      icon: Icon(Icons.facebook),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(3),
                  child: SizedBox(
                    height: 30,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text(
                        "Đăng nhập Gmail",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      icon: Icon(Icons.email),
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
                        ),
                      ),
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
