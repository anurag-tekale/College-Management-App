import 'package:flutter/material.dart';
import 'package:myapp/Pages/Intro&Login/Intro&loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xffffecb3),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Mahindra University',
      home: LoginPage(),
    );
  }
}
