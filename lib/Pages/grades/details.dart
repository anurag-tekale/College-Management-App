import 'package:flutter/material.dart';

class SemDetails extends StatefulWidget {
  @override
  _SemDetailsState createState() => _SemDetailsState();
}

class _SemDetailsState extends State<SemDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xff020415),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  //Top heading
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 50,
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 85,
                          ),
                          Text(
                            "Sem Details",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //table
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Table(
                border: TableBorder.all(),
                columnWidths: const <int, TableColumnWidth>{
                  0: IntrinsicColumnWidth(),
                  1: FlexColumnWidth(),
                  2: FixedColumnWidth(64),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: <TableRow>[
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                        child: Center(child: Text("Subject")),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                        child: Center(child: Text("Grades")),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                        child: Center(child: Text("Credits")),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                      Container(
                        height: 50,
                        width: 100,
                        color: Color(0xffE8E0FF),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            //supply
            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffECEDE1),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: Center(
                  child: Text(
                "Supplement Status : None   ",
                style: TextStyle(fontSize: 20),
              )),
            ),
            SizedBox(height: 40),
            //summary
            Container(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Grades Summary : None   ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Grades",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Credits Gained : None   ",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
