import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Ay App",
        home: new HomePage(),
        theme: new ThemeData(
          accentColor: Colors.red,
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
        ));
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "Hello World";
  void _changeText() {
    setState(() {
      if (myText.startsWith("H")) {
        myText = "Welcome to my App";
      } else {
        myText = "Hello World";
      }
    });
  }

  void _clickMe() {
    setState(() {
      myText = "Click Me button clicked";
    });
  }

  Widget _bodyWidget() {
    return new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(myText),
              new RaisedButton(
                child: new Text("Click"),
                color: Colors.red,
                onPressed: _changeText,
              ),
              new RaisedButton(
                child: new Text("Click Mw"),
                color: Colors.amber,
                onPressed: _clickMe,
              ),
              new Icon(
                Icons.adb,
                color: Colors.red[500],
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
        onPressed: _changeText,
      ),
    );
  }
}
