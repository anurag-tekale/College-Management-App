import 'package:flutter/material.dart';
//import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
//import 'package:path_provider/path_provider.dart';

class ExamList extends StatefulWidget {
  @override
  _ExamListState createState() => _ExamListState();
}

class _ExamListState extends State<ExamList> {
  Dialog leadDialog = Dialog(
    child: Container(
      height: 100.0,
      width: 100.0,
      color: Colors.yellowAccent,
      child: Center(child: Text('Not Available')),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff64ffda),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text("EXAM SCHEDULE",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                )),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 670,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1568051417544-017028e6a4e8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80"),
                  // fit: BoxFit.cover,
                ),
              ),

              //color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                      child: FlatButton(
                    minWidth: 300.0,
                    height: 100.0,
                    color: Color(0xffe0f7fa),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => leadDialog);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Text(
                      "Minor I",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff00695c),
                      ),
                    ),
                  )),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: FlatButton(
                    minWidth: 300.0,
                    height: 100.0,
                    color: Color(
                      0xffe0f7fa,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => leadDialog);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Text(
                      "Minor II",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff00695c),
                      ),
                    ),
                  )),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: FlatButton(
                    minWidth: 300.0,
                    height: 100.0,
                    color: Color(0xffe0f7fa),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => leadDialog);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Text(
                      "End Sem",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff00695c),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
