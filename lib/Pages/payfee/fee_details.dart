import 'package:flutter/material.dart';
import 'package:myapp/Pages/payfee/fee_receipt.dart';

class FeeDetails extends StatefulWidget {
  @override
  _FeeDetailsState createState() => _FeeDetailsState();
}

class _FeeDetailsState extends State<FeeDetails> {
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
                            "Fee Details",
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
            //student detail
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xff6d98d7),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Color(0xff466D7E),
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        " Name : Vishesh Fauzdar ",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        " Batch :  19 Batch / CSE",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        " Father's Name : Virendra Singh",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //fee details
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: 400,
                //height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Academic Year : ",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(width: 50),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff6d98d7),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: const Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 1.0,
                                  spreadRadius: 1.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Color(0xff466D7E),
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Select Year",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 1,
                        color: Colors.black,
                      ),
                      Text(
                        "Fee Details -",
                        style:
                            TextStyle(fontSize: 30, color: Color(0xff466D7E)),
                      ),
                      Text(
                        "Total Fees     : Rs.600000",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff466D7E)),
                      ),
                      Text(
                        "Fee Dues       : Rs.400000",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff466D7E)),
                      ),
                      Text(
                        "Paid Amount : Rs.200000",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff466D7E)),
                      ),
                      Text(
                        "Concession   : Rs.100000",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff466D7E)),
                      ),
                    ],
                  ),
                ),
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
                        color: Color(0xff2E90EE),
                        child: Center(
                            child: Text(
                          "SNo.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xff2E90EE),
                        child: Center(
                            child: Text(
                          "Head name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xff2E90EE),
                        child: Center(
                            child: Text(
                          "Amount",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xff2E90EE),
                        child: Center(
                            child: Text(
                          "Paid",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ),
                      Container(
                        height: 50,
                        color: Color(0xff2E90EE),
                        child: Center(
                            child: Text(
                          "Due",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        color: Colors.white,
                        child: Center(child: Text("1")),
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                        child: Center(child: Text("Tuition Fee")),
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  TableRow(
                    children: <Widget>[
                      Container(
                        height: 50,
                        color: Colors.white,
                        child: Center(child: Text("2")),
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                        child: Center(child: Text("Hostel Fee")),
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Enter amount
            // SizedBox(
            //   width: 25,
            // ),
            Row(
              children: <Widget>[
                Text(
                  "Enter Amount : ",
                  style: TextStyle(fontSize: 20),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 1,
                      width: 150,
                      color: Colors.black,
                    ),
                  ],
                ),
                // SizedBox(width: 50),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xff6d98d7),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    //BoxShadow
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Pay Online",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            //get receipts
            SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xff6d98d7),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                //BoxShadow
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => FeeReceipt(),
                    ),
                  );
                },
                child: Text(
                  "Online Payments Receipts ",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
