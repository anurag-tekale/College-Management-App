import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:myapp/Pages/Assignments/mainfile.dart';
import 'package:myapp/Pages/Chat/Homepage.dart';
import 'package:myapp/Pages/Foodmenu/foodmenu.dart';
import 'package:myapp/Pages/Holidays/holidays_listing_screen.dart';
import 'package:myapp/Pages/Timetable/time_table.dart';
import 'package:myapp/Pages/Todolist/mainfile.dart';
import 'package:myapp/Pages/grades/mainpage.dart';
import 'package:myapp/Pages/payfee/fee_details.dart';
import 'package:myapp/Pages/Studymaterial/mainfile.dart';
import 'package:myapp/Pages/Profile/mainfile.dart';
import 'package:myapp/Pages/settings/setting.dart';

import '../../ExamSchedule/ExamList.dart';

//import 'package:flutter_palette/flutter_palette.dart';
class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Material myItems(
      IconData icon, String heading, int color1, int color2, int color3) {
    return Material(
      color: new Color(color1),
      // shadowColor: Colors.black,

      // elevation: 16,
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
                  SizedBox(
                    height: 15,
                  ),
                  //icon button
                  Material(
                    color: new Color(color2),
                    borderRadius: BorderRadius.circular(40),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Icon(
                        icon,
                        color: new Color(color3),
                        size: 30,
                      ),
                    ),
                  ),
                  //text
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      heading,
                      style: TextStyle(
                        color: new Color(color3),
                        fontSize: 20,
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
                  Container(
                    //margin: EdgeInsets.all(100.0),
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF6C60E0),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.bubble_chart),
                              color: Colors.white,
                              iconSize: 30,
                              onPressed: () {},
                            ),
                            SizedBox(width: 75),
                            Text(
                              'DASHBOARD',
                              style: TextStyle(
                                fontSize: 30,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 65),
                            IconButton(
                              icon: Icon(Icons.notifications),
                              color: Colors.white,
                              iconSize: 30,
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '  Hi Jacob!',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '  Welcome Back',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 90,
                            ),
                            //gif
                            Image.asset(
                              "assets/images/study.gif",
                              height: 100.0,
                              width: 100.0,
                            ),
                          ],
                        ),
                        //search
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xffA7A0EC),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.0),
                                )),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 40,
                                  )),
                                ),
                                Container(
                                  child: Text(
                                    "What category are you searching for ?",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Categories',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Icon(
                          Icons.delete_outline,
                          color: Color(0xffDAD7F8),
                          size: 30,
                        ),
                        Icon(
                          Icons.edit_outlined,
                          color: Color(0xffDAD7F8),
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.arrow_upward,
                          color: Color(0xff6C60E0),
                          size: 30,
                        ),
                        Icon(
                          Icons.arrow_downward,
                          color: Color(0xff6C60E0),
                          size: 30,
                        ),
                      ],
                    ),
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
                      child: myItems(Icons.assignment, 'Assignment', 0xffFFF3C6,
                          0xffFFFAE7, 0xffFAC078),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => Grades(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myItems(Icons.grade_outlined, 'Grades', 0xffD7EFFF,
                          0xffF1F9FF, 0xff53AAF8),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => FeeDetails(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myItems(Icons.payments_outlined, 'Pay Fee',
                          0xffE0D7FF, 0xffF4F1FF, 0xff9B83F4),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: myItems(Icons.work_off, 'Holidays', 0xffB3E5Fc,
                  //       0xffE0F7FA, 0xff00E5FF),
                  // ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => FoodMenu(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myItems(Icons.fastfood, 'Food Menu', 0xffFBE1FB,
                          0xffFFEFFF, 0xffF26ACB),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              HolidaysListingScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myItems(Icons.work_off, 'Holidays', 0xffB8EEDC,
                          0xffE3FFF6, 0xff4AAE8C),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => Studymaterial(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myItems(Icons.book_online, 'Study Material',
                          0xffFFDFCD, 0xffFFF2EB, 0xffFE8F77),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => ExamList(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myItems(Icons.text_snippet, 'Exam', 0xffccff90,
                          0xffe8f5e9, 0xff1b5e20),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => Timetable(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myItems(Icons.access_time, 'Time table',
                          0xff64ffda, 0xffe0f7fa, 0xff004d40),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => ToDoPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myItems(Icons.mark_chat_read, 'ToDo List',
                          0xffdcedc8, 0xffF9fbe7, 0xfffaeea00),
                    ),
                  ),
                ],
                staggeredTiles: [
                  StaggeredTile.extent(2, 250),
                  StaggeredTile.extent(2, 50),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
                  StaggeredTile.extent(1, 150),
                  // StaggeredTile.extent(1, 150),
                ],
              ),
              ProfilePage(),
              HomePageChat(),
              Settings(),
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
