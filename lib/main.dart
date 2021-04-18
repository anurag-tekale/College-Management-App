import 'package:flutter/material.dart';
import 'package:myapp/Pages/Timetable/time_table.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mahindra University',
      home: Timetable(),
    );
  }
}