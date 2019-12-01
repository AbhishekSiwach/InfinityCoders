import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'package:pie_chart/pie_chart.dart';
void main(){
   runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return new MaterialApp( 
      //title: "MyApp",
      home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomePage': (BuildContext context) => new HomePage()},
      // home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        accentColor: Colors.red
      ),
      
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext="Hello change";
  Map<String, double> dataMap = new Map();
    List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];      

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



Widget _bodyWidget(BuildContext context){
return new Container(
  
  padding: const EdgeInsets.all(8.0),
  color: Colors.white70,
  child: ListView(
  children: <Widget>[
    ListTile(
      leading: Icon(Icons.add_to_queue),
      title: Text('New Schedule'),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap:(){  Navigator.push(context, MaterialPageRoute(builder: (context)=>NSchedule()),
      );
      }
    ),
    ListTile(
      leading: Icon(Icons.account_circle),
      title: Text('My Account'),
      trailing: Icon(Icons.keyboard_arrow_right),
    ),
    ListTile(
      leading: Icon(Icons.announcement),
      title: Text('about'),
      trailing: Icon(Icons.keyboard_arrow_right),
    ),
  ],
),
 
  
    
  
  );
  
  
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("data"),
      ),
      body: _bodyWidget(context)
    );
  }
}



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomePage');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Image.asset('assets/images/waste.png',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.contain,
      ),
        
      ),
      
    );
  }
}
class TabsExample extends StatelessWidget {
  // const TabsExample({Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    final _kTabPages=<Widget>[
      Center(child: Icon(Icons.cloud,size: 64.0,color:Colors.teal)),
      Center(child: Icon(Icons.alarm,size: 64.0,color:Colors.cyan)),
      Center(child: Icon(Icons.forum,size: 64.0,color:Colors.blue))

    ];
    final _ktabs=<Tab>[
      Tab(icon: Icon(Icons.cloud),text :'Total'),
      Tab(icon: Icon(Icons.alarm),text :'Total'),
      Tab(icon: Icon(Icons.forum),text :'Total')
    ];
    return DefaultTabController(
      length:_ktabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('app bar'),
          backgroundColor: Colors.cyan,
          bottom: TabBar(tabs:_ktabs),
        ),
        body: TabBarView(children: _kTabPages,),
      ),
    );
  }
}

class NSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Schedule'),),
      body: ,
    );
  }
}