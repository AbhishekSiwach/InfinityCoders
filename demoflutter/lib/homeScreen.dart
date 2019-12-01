  
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // return new Scaffold(
    //   appBar: new AppBar(
    //     title: new Text('HomeScreen'),
    //   ),
    //   body: new Center(
    //     child: new Text('Welcome to Home.!'),
    //   ),
    // );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("data"),
      ),
      body: _bodyWidget()
    );
  }

  String mytext="Hello change";
  void _change(){
    
  setState(() {
    if (mytext.startsWith("H")) {
      mytext="changed";
    }
    else{
      mytext="Hello change";
    }
  });
}

Widget _bodyWidget(){
return new Container(
  padding: const EdgeInsets.all(8.0),
  child: new Center(
    child: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text("data"),
      ],
    ),
  ),
  );
}
}