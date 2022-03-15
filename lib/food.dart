// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:google_fonts/google_fonts.dart';

class Food extends StatefulWidget {
  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  double _currentSliderValue = 0;
  double sliderValue = 0;
  double sliderValue2 = 0;
  double sliderValue3 = 0;
  @override
  Widget build(BuildContext context) {
    String text = '12';
    bool? status = false;
    final myController = TextEditingController();

    return new Scaffold(
        backgroundColor: Colors.green,
        appBar: new AppBar(
          foregroundColor: Colors.green,
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              new Container(
                color: Colors.teal[800],
                child: new Column(
                  children: [
                    DrawerHeader(
                      //accountName: Text("matteo_regge"),
                      //accountEmail: Text("teo.regge.99@gmail.com"),
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow[800],
                        foregroundColor: Colors.blue[200],
                        child: Icon(Icons.person_sharp, size: 30),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                color: Colors.teal[800],
                child: new Column(
                  children: [
                    ListTile(
                      //tileColor: Colors.green[300],
                      leading: Icon(Icons.label_sharp),
                      //doesn't work for now
                      //hoverColor: Colors.blue[200],
                      title: Text('Profile'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      //tileColor: Colors.green[300],
                      leading: Icon(Icons.label_sharp),
                      title: Text('Food'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Food()));
                      },
                    ),
                    ListTile(
                      //tileColor: Colors.green[300],
                      leading: Icon(Icons.label_sharp),
                      title: Text('Training'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      //tileColor: Colors.green[300],
                      leading: Icon(Icons.label_sharp),
                      title: Text('Stress'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      //tileColor: Colors.green[300],
                      leading: Icon(Icons.label_sharp),
                      title: Text('Sleep'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      //tileColor: Colors.green[300],
                      leading: Icon(Icons.label_sharp),
                      title: Text('Blog'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      //tileColor: Colors.green[300],
                      leading: Icon(Icons.label_sharp),
                      title: Text('Settings'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Divider(),
                    ListTile(
                      trailing: Icon(Icons.close),
                      title: Text('Close'),
                      onTap: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              Container(
                //decoration: BoxDecoration(color: Colors.green[200]),
                color: Colors.blue[100],
              ),
            ],
          ),
        ),
        body: Center(
          child: ListView(children: <Widget>[
            Container(
              height: 150,
              color: Colors.transparent,
              margin: new EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: new Container(
                  decoration: new BoxDecoration(
                      color: Colors.teal,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0),
                        bottomRight: const Radius.circular(20.0),
                      )),
                  child: new Center(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new CircularPercentIndicator(
                          radius: 70.0,
                          lineWidth: 7.0,
                          percent: 0.10,
                          center: new Text("Breakfast"),
                          progressColor: Colors.red,
                        ),
                        new Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        new CircularPercentIndicator(
                          radius: 70.0,
                          lineWidth: 7.0,
                          percent: 0.30,
                          center: new Text("Lunch"),
                          progressColor: Colors.orange,
                        ),
                        new Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        new CircularPercentIndicator(
                          radius: 70.0,
                          lineWidth: 7.0,
                          percent: 0.60,
                          center: new Text("Dinner"),
                          progressColor: Colors.yellow,
                        ),
                        new Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        new CircularPercentIndicator(
                          radius: 70.0,
                          lineWidth: 7.0,
                          percent: 0.90,
                          center: new Text("Snacks"),
                          progressColor: Colors.green,
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              height: 150,
              color: Colors.transparent,
              margin: new EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: new Container(
                  decoration: new BoxDecoration(
                      color: Colors.teal,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0),
                        bottomRight: const Radius.circular(20.0),
                      )),
                  child: new Center(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new CircularPercentIndicator(
                          radius: 90.0,
                          lineWidth: 10.0,
                          percent: 0.60,
                          center: new Text("Caffeine",
                              style: GoogleFonts.vollkornSc()),
                          progressColor: Colors.yellow,
                        ),
                        new Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                        new CircularPercentIndicator(
                          radius: 90.0,
                          lineWidth: 10.0,
                          percent: 0.90,
                          center: new Text("Water"),
                          progressColor: Colors.green,
                        )
                      ],
                    ),
                  )),
            ),
            new Container(
                height: 300.0,
                color: Colors.transparent,
                child: new Container(
                  decoration: new BoxDecoration(
                      color: Colors.teal,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0),
                      )),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Column(children: <Widget>[
                        Divider(
                          height: 20,
                        ),
                        new Text('Carbs',
                            textScaleFactor: 1.4,
                            style: new TextStyle(
                                fontFamily: 'Helvetica', color: Colors.orange)),
                        Divider(
                          height: 40,
                        ),
                        new Text('Fruits',
                            textScaleFactor: 1.4,
                            style: new TextStyle(
                                fontFamily: 'Helvetica', color: Colors.orange)),
                        Divider(
                          height: 40,
                        ),
                        new Text('Vegetables',
                            textScaleFactor: 1.4,
                            style: new TextStyle(
                                fontFamily: 'Helvetica', color: Colors.orange)),
                        Divider(
                          height: 40,
                        ),
                        new Text('Proteins',
                            textScaleFactor: 1.4,
                            style: new TextStyle(
                                fontFamily: 'Helvetica', color: Colors.orange)),
                      ]),
                      new Column(children: <Widget>[
                        Divider(
                          height: 10,
                        ),
                        Container(
                            child: Slider(
                          activeColor: Colors.yellow,
                          inactiveColor: Colors.orange,
                          value: _currentSliderValue,
                          min: 0,
                          max: 100,
                          divisions: 2,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        )),
                        Divider(
                          height: 15,
                        ),
                        Container(
                            child: Slider(
                          activeColor: Colors.yellow,
                          inactiveColor: Colors.orange,
                          value: sliderValue,
                          min: 0,
                          max: 100,
                          divisions: 2,
                          label: sliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              sliderValue = value;
                            });
                          },
                        )),
                        Divider(
                          height: 15,
                        ),
                        Container(
                            child: Slider(
                          activeColor: Colors.yellow,
                          inactiveColor: Colors.orange,
                          value: sliderValue2,
                          min: 0,
                          max: 100,
                          divisions: 2,
                          label: sliderValue2.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              sliderValue2 = value;
                            });
                          },
                        )),
                        Divider(
                          height: 15,
                        ),
                        Container(
                            child: Slider(
                          activeColor: Colors.yellow,
                          inactiveColor: Colors.orange,
                          value: sliderValue3,
                          min: 0,
                          max: 100,
                          divisions: 2,
                          label: sliderValue3.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              sliderValue3 = value;
                            });
                          },
                        ))
                      ]),
                    ],
                  ),
                )),
          ]),
        ));
  }
}
