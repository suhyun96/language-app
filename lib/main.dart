import 'package:flutter/material.dart';
import 'package:language_app/screen/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Spoqa',
      ),
      home: SplashScreen(),
    ),
  );
}
