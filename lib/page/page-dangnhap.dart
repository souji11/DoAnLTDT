import 'page-dangky.dart';
import 'page-quenmatkhau.dart';
import 'package:flutter/material.dart';

class PageDangNhap extends StatefulWidget {
  const PageDangNhap({Key? key}) : super(key: key);

  @override
  _PageDangNhap createState() => _PageDangNhap();
}

class _PageDangNhap extends State<PageDangNhap> {
  bool isPassWord = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/body-iu.jpeg'), fit: BoxFit.cover),
          ),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(50),
                child: Image.asset('images/logo.png', height: 100, width: 350),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Đăng nhập",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Tải khoản",
                      prefixIcon: Icon(Icons.login)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  obscureText: isPassWord,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: "Mật khẩu",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isPassWord = !isPassWord;
                        });
                      },
                      child: Icon(
                          isPassWord ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  width: double.infinity,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Đăng nhập"),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "------------------------------------------------------------------------------------------------",
                  textAlign: TextAlign.center,
                ),
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
                padding: EdgeInsets.all(5),
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
              TextButton(
                child: Text(
                  "Quên mật khẩu ?",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageQuenMatKhau()),
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Bạn chưa có tài khoản ?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                child: Text(
                  "Đăng ký ?",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageDangKy()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
