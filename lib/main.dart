import 'package:flutter/material.dart';
import 'package:myapp/Pages/Intro&Login/Intro&loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mahindra University',
      home: LoginPage(),
    );
  }
}
