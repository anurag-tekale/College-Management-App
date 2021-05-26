import 'package:flutter/material.dart';

import '../Intro&Login/Intro&loginpage.dart';

//import 'package:flutter_palette/flutter_palette.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
            //margin: EdgeInsets.all(100.0),
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xff020415),
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
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      iconSize: 30,
                      onPressed: () {},
                    ),
                    SizedBox(width: 90),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 30,
                        // fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 65),
                  ],
                ),
                SizedBox(
                  height: 30,
                ), //search
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0x3dffffff),
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
                            " Search",
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
                //options
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.notifications,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Notifications',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.lock_open_outlined,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Change Passward',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.account_circle_outlined,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Account',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.ac_unit_outlined,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Help',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.help_outline_outlined,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'About',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.palette_outlined,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Theme',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.how_to_vote_outlined,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Suggestions',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            icon: Icon(Icons.logout, size: 40, color: Colors.black),
            label: Text(
              'Logout',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800]),
            ),
          )
        ]),
      ),
    );
  }
}
