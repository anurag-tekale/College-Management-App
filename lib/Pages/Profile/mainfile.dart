import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfilePage extends StatelessWidget {
  List tags = ['travel', 'urban', 'fashion', 'lifestyle', 'editing'];
  List Categories = [
    'Featured',
    'Neon City',
    'Street Art',
    'Fashion',
    'Studio'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff09031d),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
        backgroundColor: Color(0xff09031d),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28, top: 7),
                child: CircleAvatar(
                  radius: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bises Baba',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 17,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'NewYork',
                              style: TextStyle(
                                color: Colors.white,
                                wordSpacing: 3,
                                letterSpacing: 4,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 38.0, left: 38, top: 15, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '17K',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: 0.2,
                  height: 22,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '387',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: 0.2,
                  height: 22,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 18,
                    right: 18,
                    top: 8,
                    bottom: 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(33),
                    ),
                    gradient: LinearGradient(
                      colors: [Color(0xff6d0eb5), Color(0xff4059f1)],
                    ),
                  ),
                  child: Text(
                    'Follow',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 44,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tags.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.white12),
                  ),
                  margin: EdgeInsets.only(right: 13),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 5,
                      right: 20,
                      left: 20,
                    ),
                    child: Text(
                      tags[index],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  color: Color(0xffefefef),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(34))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      right: 25,
                      left: 25,
                    ),
                    child: Text(
                      'Portfolio',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 25, left: 25),
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 17.0, top: 10),
                          child: index == 1
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      Categories[index],
                                      style: TextStyle(
                                          color: Color(0xff434ae8),
                                          fontSize: 20),
                                    ),
                                    CircleAvatar(
                                      radius: 2,
                                      backgroundColor: Color(0xff434ae8),
                                    ),
                                  ],
                                )
                              : Text(
                                  Categories[index],
                                  style: TextStyle(
                                    color: Colors.grey.withOpacity(0.9),
                                    fontSize: 19,
                                  ),
                                ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            padding: EdgeInsets.only(right: 25, left: 25),
                            height: 200,
                            child: StaggeredGridView.countBuilder(
                              crossAxisCount: 4,
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) =>
                                  Container(
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  child: Image.asset(
                                    'assets/images/img${index + 1}.jpeg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              staggeredTileBuilder: (int index) =>
                                  StaggeredTile.count(2, index.isEven ? 3 : 1),
                              mainAxisSpacing: 9,
                              crossAxisSpacing: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
