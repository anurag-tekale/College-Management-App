import 'package:flutter/material.dart';
import 'Pages/Intro&Login/Intro&loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mahindra University',
      home: LoginPage(),
    );
  }
}