import 'package:flutter/material.dart';

class FeeReceipt extends StatefulWidget {
  @override
  _FeeReceiptState createState() => _FeeReceiptState();
}

class _FeeReceiptState extends State<FeeReceipt> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xff8255FF),
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
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 75,
                          ),
                          Text(
                            "Fee Receipts",
                            style: TextStyle(
                                fontSize: 30,
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Online Payments:",
                style: TextStyle(fontSize: 20),
              ),
            ),
            //table
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Table(
                border: TableBorder.all(),
                columnWidths: const <int, TableColumnWidth>{
                  //0: IntrinsicColumnWidth(),
                  // 1: FlexColumnWidth(),
                  // 2: FixedColumnWidth(64),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: <TableRow>[
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                        child: Center(child: Text("SNo.")),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                        child: Center(child: Text("Amount  Paid")),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                        child: Center(child: Text("Date")),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                        child: Center(child: Text("Receipt")),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xffECEDE1),
                      ),
                    ],
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
