import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TODOApp extends StatefulWidget {
  TODOApp({Key? key}) : super(key: key);

  @override
  _TODOAppState createState() => _TODOAppState();
}

class _TODOAppState extends State<TODOApp> {
  TextEditingController _todoController = TextEditingController();
  // ignore: deprecated_member_use
  List<String> todoList = [];
  bool _isLoading = false;

  _saveList(list) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setStringList("key", list);
  }

  _getSavedList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getStringList("key") != null)
      todoList = prefs.getStringList("key")!;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _isLoading = true;
    });
    _getSavedList();

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SafeArea(
        child: _isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                child: Column(
                  children: <Widget>[
                    Column(
                        //padding: const EdgeInsets.all(8.0),
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Add Items',
                            ),
                            controller: _todoController,
                            onSubmitted: (text) {
                              // do what you want with the text
                              todoList.add(_todoController.text);
                              _todoController.clear();
                              setState(() {});
                            },
                          ),
                          TextButton(
                            child: Text('Save'),
                            onPressed: () {
                              _saveList(todoList);
                              //Navigator.of(context).pop(true);
                            },
                          )
                        ]),
                    todoList.isEmpty
                        ? Container(
                            child: Center(
                              child: Text('Please Add the items'),
                            ),
                          )
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount: todoList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(todoList[index]),
                                ),
                              );
                            },
                          ),
                  ],
                ),
              ),
      ),
    ]);
  }
}
