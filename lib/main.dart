import 'package:flutter/material.dart';
import 'package:mindjournal/food.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pink[300],
        title: Text('Flutter Indexed Stack Demo'),
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
          Container(
              child: Center(
                  child: Image.asset(
            "assets/images/flutter.png",
          ))),
          Container(
              child: Center(
                  child: Image.asset(
            "assets/images/powered_by.png",
          ))),
          Food(),
        ],
      ),
    );
  }

  Widget _navigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton(
          color: Colors.pink[300],
          child: Text(
            'Flutter',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 0;
            });
          },
        ),
        FlatButton(
          color: Colors.pink[300],
          child: Text(
            'Aeologic',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 1;
            });
          },
        ),
        FlatButton(
          color: Colors.pink[300],
          child: Text(
            'Flutter Devs',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          onPressed: () {
            setState(() {
              index = 2;
            });
          },
        ),
      ],
    );
  }
}
