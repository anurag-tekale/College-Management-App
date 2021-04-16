import 'package:flutter/material.dart';
import 'Pages/DashBoard/Students/Dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mahindra University',
      home: Homescreen(),
    );
  }
}