import 'package:flutter/material.dart';
import 'Pages/Intro&Login/Intro&loginpage.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF544ecc),
        accentColor: Color(0xff6d98d7),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Mahindra University',
      home: LoginPage(),
    );
  }
}
