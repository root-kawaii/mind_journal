import 'package:flutter/material.dart';
import 'package:mindjournal/food.dart';
import 'package:mindjournal/todo.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'meeting.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: CustomNavigationBarDemo(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class CustomNavigationBarDemo extends StatefulWidget {
  const CustomNavigationBarDemo({Key? key}) : super(key: key);

  @override
  _CustomNavigationBarDemoState createState() =>
      _CustomNavigationBarDemoState();
}

class _CustomNavigationBarDemoState extends State<CustomNavigationBarDemo> {
  int index = 0;

  late CalendarDataSource _dataSource;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 209, 14, 144),
        title: Text('Indexed Stack Demo'),
      ),
      body: Padding(
        child: Column(
          children: <Widget>[_stackedContainers(), _navigationButtons()],
        ),
        padding: EdgeInsets.all(5.0),
      ),
    );
  }

  Widget _stackedContainers() {
    return Expanded(
      child: IndexedStack(
        index: index,
        children: <Widget>[
          Calendar(),
          Container(
              child: Center(
                  child: Image.asset(
            "assets/images/mas.png",
          ))),
          Food(),
          TODOApp(),
        ],
      ),
    );
  }

  Widget _navigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton(
          color: Color.fromARGB(255, 219, 10, 10),
          child: Text(
            'Calendar',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 0;
            });
          },
        ),
        FlatButton(
          color: Color.fromARGB(255, 236, 13, 87),
          child: Text(
            'ToDo',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 1;
            });
          },
        ),
        FlatButton(
          color: Color.fromARGB(255, 236, 13, 87),
          child: Text(
            'Aeologic',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 2;
            });
          },
        ),
        FlatButton(
          color: Color.fromARGB(255, 73, 3, 27),
          child: Text(
            'Flutter Devs',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 3;
            });
          },
        ),
      ],
    );
  }
}
