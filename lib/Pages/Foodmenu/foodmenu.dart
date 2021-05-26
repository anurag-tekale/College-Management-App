import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FoodMenu extends StatefulWidget {
  @override
  _FoodMenuState createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff020415),
        body: Column(
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
                      ),
                    ),
                    SizedBox(
                      width: 85,
                    ),
                    Text(
                      "Food Menu",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            //Content
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    //weeks days
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        7,
                        (index) => DateRow(
                          index: index,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        //flip card
                        ItemsCard(name: 'Breakfast', date: '7:30-9:30 AM'),
                        SizedBox(height: 20),
                        ItemsCard(name: 'Lunch', date: '12:30-2:30 PM'),
                        SizedBox(height: 20),
                        ItemsCard(name: 'Snack', date: '4:30-6:30 PM'),
                        SizedBox(height: 20),
                        ItemsCard(name: 'Dinner', date: '7:30-9:30 PM'),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemsCard extends StatefulWidget {
  final name;
  final date;
  const ItemsCard({
    Key key,
    this.name,
    this.date,
  }) : super(key: key);

  @override
  _ItemsCardState createState() => _ItemsCardState();
}

class _ItemsCardState extends State<ItemsCard> {
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.HORIZONTAL, // default
      back: Container(
        width: 384,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff6d98d7),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          // color: Color(0xffE8E0FF),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      widget.date,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    5,
                    (index) => Items(
                      index: index,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      front: Container(
        height: 100,
        width: 384,
        decoration: BoxDecoration(
          color: Color(0xff6d98d7),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                widget.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 15),
              Text(
                widget.date,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DateRow extends StatefulWidget {
  final index;

  const DateRow({Key key, this.index}) : super(key: key);
  @override
  _DateRowState createState() => _DateRowState();
}

class _DateRowState extends State<DateRow> {
  bool selectdate = true;
  var list = ['Mon', 'Tue', 'Wed', 'Th', 'Fr', 'Sat', 'Sun'];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          selectdate = !selectdate;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          height: 50,
          padding: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Text(
                list[widget.index],
                style: TextStyle(
                    fontWeight:
                        (selectdate ? FontWeight.bold : FontWeight.bold),
                    fontSize: (selectdate ? 20 : 25),
                    color: (selectdate ? Colors.grey : Color(0xff8255FF))),
              ),
              Container(
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: selectdate ? Colors.grey : Color(0xff8255FF)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Items extends StatefulWidget {
  final index;

  const Items({Key key, this.index}) : super(key: key);
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  bool selectdate = true;
  var list = [
    'Idly',
    'Wada',
    'Sambhar',
    'Coconut/Ginger Chutney',
    'Tea/Coffe/Boost'
  ];

  @override
  Widget build(BuildContext context) {
    return Text(
      list[widget.index],
      style: TextStyle(
        fontSize: 20,
        color: Colors.white
      ),
    );
  }
}
