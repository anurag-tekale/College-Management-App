import 'package:flutter/material.dart';
import 'package:myapp/Widgets/Header.dart';
import 'package:myapp/Widgets/RecentAssignments.dart';
import 'package:myapp/Widgets/RecentHomeworks.dart';

class AssignmentsPage extends StatefulWidget {
  @override
  _AssignmentsPageState createState() => _AssignmentsPageState();
}

class _AssignmentsPageState extends State<AssignmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Header(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              style: TextStyle(
                color: Color(0xFF6C7174),
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8.0),
                border: InputBorder.none,
                fillColor: Colors.grey[400],
                hintText: "Search",
                hintStyle: TextStyle(color: Color(0xFF6C7174)),
                prefixIcon:
                    Icon(Icons.search, color: Color(0xFF6C7174), size: 26.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Container(
            padding: EdgeInsets.all(35.0),
            decoration: BoxDecoration(
              color: Color(0xFF544ecc),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Recent Assignments",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),
                RecentAssignments(),
                Center(
                  child: Text(
                    "View all",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  height: 2,
                ),
                SizedBox(height: 20.0),
                Text(
                  "Recent Homework",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),
                RecentHomeworks(),
                Center(
                  child: Text(
                    "View all",
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                SizedBox(height: 30.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
