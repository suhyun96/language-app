import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // 2초 뒤에 로그인 화면으로 이동
    Timer(
      Duration(milliseconds: 3000),
      () {
        // pushAndRemoveUntil -> 그냥 push면 취소버튼 누를 때 스플래쉬 화면 나옴
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (_) => LoginScreen(),
          ),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Study World',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
            ),
            Container(
              // width: MediaQuery.of(context).size.width * 0.7,
              // height: MediaQuery.of(context).size.height * 0.5,
              child: Image.asset('asset/img/logo.png'),
            ),
            CircularProgressIndicator(
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
