import 'package:flutter/material.dart';
import 'package:myapp/Pages/DashBoard/Students/Dashboard.dart';
import 'package:myapp/Pages/ExamSchedule/ExamList.dart';
import 'package:myapp/Pages/Intro&Login/Intro&loginpage.dart';
import 'package:myapp/Pages/foodmenu.dart';

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
      home: Homescreen(),
    );
  }
}
