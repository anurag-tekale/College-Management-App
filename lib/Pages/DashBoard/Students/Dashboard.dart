//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:myapp/Pages/Assignments/mainfile.dart';

//import 'package:flutter_palette/flutter_palette.dart';
class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Material MyItems(IconData icon, String heading, int color) {
    return Material(
      color: Color(0xffE0F7FA),
      shadowColor: Colors.black,

      elevation: 16,
      //shadowColor:
      borderRadius: BorderRadius.circular(24),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //text
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      heading,
                      style: TextStyle(
                        color: new Color(color),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  //icon button
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(40),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Color(0XffEA3A4F),
        title: Text("Student's Dashboard"),
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            StaggeredGridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => AssignmentsPage(),
                      ),
                    );
                  },
                  child: MyItems(
                    Icons.assignment,
                    'Assignment',
                    0xff0A0101,
                  ),
                ),
                MyItems(Icons.grade_outlined, 'Grades', 0xff0A0101),
                MyItems(Icons.payments_outlined, 'Pay Fee', 0xff0A0101),
                MyItems(Icons.work_off, 'Holidays', 0xff0A0101),
                MyItems(Icons.fastfood, 'Food Menu', 0xff0A0101),
                MyItems(Icons.mark_chat_read, 'Attendance', 0xff0A0101),
                MyItems(Icons.notifications, 'Anouncement', 0xff0A0101),
                MyItems(Icons.book_online, 'Study \n Material', 0xff0A0101),
                MyItems(Icons.text_snippet, 'Exam', 0xff0A0101),
                MyItems(Icons.access_time, 'Time table', 0xff0A0101),
              ],
              staggeredTiles: [
                StaggeredTile.extent(2, 130),
                StaggeredTile.extent(1, 300),
                StaggeredTile.extent(1, 150),
                StaggeredTile.extent(1, 150),
                StaggeredTile.extent(2, 240),
                StaggeredTile.extent(2, 130),
                StaggeredTile.extent(1, 150),
                StaggeredTile.extent(1, 150),
                StaggeredTile.extent(1, 150),
                StaggeredTile.extent(1, 150),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Users'),
              activeColor: Colors.purpleAccent),
          BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text('Messages'),
              activeColor: Colors.pink),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.blue),
        ],
      ),
    );
  }
}
