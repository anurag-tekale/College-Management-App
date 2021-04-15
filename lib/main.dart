import 'package:flutter/material.dart';
import 'package:myapp/Pages/Assignments/mainfile.dart';
import 'package:myapp/Pages/Intro&Login/Intro&loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mahindra University',
      home: AssignmentsPage(),
    );
  }
}