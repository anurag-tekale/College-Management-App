import 'package:flutter/material.dart';

class Timetable extends StatefulWidget {
  @override
  _TimetableState createState() => _TimetableState();
}

class _TimetableState extends State<Timetable> {
  //bool selectdate = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 64,
              color: Color(0xffEA3A4F),
            ),
            Container(
              color: Color(0xffEA3A4F),
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TopRow(),
                  Padding(
                    padding: const EdgeInsets.only(top: 21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        DateRow(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                '13.00',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Line(
                line: [20.0, 30.0, 40.0, 10.0],
              ),
            ],
          ),
          SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              width: 100,
              height: 100,
              child: Container(
                margin: EdgeInsets.only(left: 4),
                color: Color(0xffE0F2F1),
                padding: EdgeInsets.only(left: 16, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 21,
                      child: Row(
                        children: <Widget>[
                          Text('8:25 am - 9:20 am'),
                          VerticalDivider(
                            color: Colors.black,
                          ),
                          Text('LLT1'),
                        ],
                      ),
                    ),
                    Text(
                      'CS203 (DAA)',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Line extends StatelessWidget {
  final List line;
  const Line({
    Key key,
    this.line,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          4,
          (index) => Container(
            width: line[index],
            height: 2,
            color: Color(0xffC4C4C4),
            margin: EdgeInsets.symmetric(vertical: 14),
          ),
        ));
  }
}

class DateRow extends StatefulWidget {
  @override
  _DateRowState createState() => _DateRowState();
}

class _DateRowState extends State<DateRow> {
  bool selectdate = true;

  @override
  Widget build(BuildContext context) {
    final List<String> days = <String>[
      "Mon",
      "Tue",
      "wed",
      "thur",
      "fri",
      "sat",
      "sun"
    ];

    int index;
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          7,
          (index) => InkWell(
            onTap: () {
              setState(() {
                selectdate = !selectdate;
              });
            },
            child: Container(
              decoration: selectdate
                  ? null
                  : BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text(
                    days[index],
                    style: TextStyle(
                        fontWeight:
                            (selectdate ? FontWeight.bold : FontWeight.bold),
                        fontSize: (selectdate ? 15 : 17),
                        color: (selectdate ? Colors.red[100] : Colors.white)),
                  ),
                  // Text(
                  //   '${10 + widget.index}',
                  //   style: TextStyle(
                  //       fontWeight:
                  //           (selectdate ? FontWeight.bold : FontWeight.bold),
                  //       fontSize: (selectdate ? 15 : 17),
                  //       color: (selectdate ? Colors.red[100] : Colors.white)),
                  // ),
                  Container(
                    width: 4,
                    height: 4,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selectdate ? Colors.red[100] : Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class TopRow extends StatelessWidget {
  const TopRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              'Time',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              'table',
              style: TextStyle(
                color: Colors.red[100],
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          'Jan',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
