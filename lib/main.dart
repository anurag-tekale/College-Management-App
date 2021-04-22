import 'package:flutter/material.dart';
import 'Pages/DashBoard/Students/Dashboard.dart';
import 'Pages/Timetable/time_table.dart';
import 'Pages/Profile/mainfile.dart';

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
