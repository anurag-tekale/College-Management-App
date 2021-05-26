import 'package:flutter/material.dart';

import 'package:myapp/Widgets/category_selector.dart';
import 'package:myapp/Widgets/recent_chats.dart';

class HomePageChat extends StatefulWidget {
  @override
  _HomePageChatState createState() => _HomePageChatState();
}

class _HomePageChatState extends State<HomePageChat> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff020415),
      appBar: AppBar(
        backgroundColor: Color(0xff020415),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {},
          iconSize: 22,
        ),
        title: Text(
          'Chat',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
            iconSize: 25,
          ),
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          RecentChats(),
        ],
      ),
    );
  }
}
