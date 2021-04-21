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
      color: Color(0xffFFFFFF),
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
                        color: Colors.black,
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
    return SafeArea(
      child: Scaffold(
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              StaggeredGridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        //margin: EdgeInsets.all(100.0),
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.blue[800],
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(100.0),
                                bottomRight: Radius.circular(100.0))),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.menu),
                                  color: Colors.white,
                                  iconSize: 30,
                                  onPressed: () {},
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'DASHBOARD',
                                  style: TextStyle(
                                    fontSize: 30,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            //margin: EdgeInsets.all(100.0),
                            height: 300,
//profile container
                            child: Center(
                              child: Container(
                                height: 200,
                                width: 350,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 10.0,
                                      ),
                                    ],
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                      child: Column(
                                        children: <Widget>[
                                          CircleAvatar(
                                            radius: 50.0,
                                            backgroundImage: NetworkImage(
                                                'https://images.unsplash.com/photo-1563889958749-625da26ed355?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMxfEpwZzZLaWRsLUhrfHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                                            backgroundColor: Colors.transparent,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Jacob Black',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Std - Cse',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => AssignmentsPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          MyItems(Icons.assignment, 'Assignment', 0xff2196F3),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyItems(Icons.grade_outlined, 'Grades', 0xff2196F3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        MyItems(Icons.payments_outlined, 'Pay Fee', 0xff2196F3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyItems(Icons.work_off, 'Holidays', 0xff2196F3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyItems(Icons.fastfood, 'Food Menu', 0xff2196F3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        MyItems(Icons.mark_chat_read, 'Attendance', 0xff2196F3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        MyItems(Icons.notifications, 'Anouncement', 0xff2196F3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyItems(
                        Icons.book_online, 'Study Material', 0xff2196F3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyItems(Icons.text_snippet, 'Exam', 0xff2196F3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyItems(Icons.access_time, 'Time table', 0xff2196F3),
                  ),
                ],
                staggeredTiles: [
                  StaggeredTile.extent(2, 330),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
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
      ),
    );
  }
}
