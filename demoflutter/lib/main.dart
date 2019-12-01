import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:intl/intl.dart';

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
    // ListTile(
    //   leading: Icon(Icons.add_to_queue),
    //   title: Text('New Schedule'),
    //   trailing: Icon(Icons.keyboard_arrow_right),
    //   onTap:(){  Navigator.push(context, MaterialPageRoute(builder: (context)=>NSchedule()),
    //   );
    //   }
    // ),
    ListTile(
      leading: Icon(Icons.account_circle),
      title: Text('My Account'),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap:(){  Navigator.push(context, MaterialPageRoute(builder: (context)=>NSchedule()),
      );
      }
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
        title: new Text("Greenicon"),
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
class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Request Submitted'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}
class NSchedule extends StatefulWidget {
  @override
  _NScheduleState createState() => _NScheduleState();
}

class _NScheduleState extends State<NSchedule> {
  final format = DateFormat("yyyy-MM-dd");
  String _name;
  String _phone;
  String _address;
  bool _CheckBoxVal=false;
  bool _CheckBoxVal1=false;
  bool _CheckBoxVal2=false;
  bool _CheckBoxVal3=false;
  bool _CheckBoxVal4=false;
  bool _CheckBoxVal5=false;
  bool _CheckBoxVal6=false;
  
  @override
  Widget build(BuildContext context) {
    // final _showSnack=()=>Scaffold.of(context).showSnackBar(SnackBar(
    //   content:Text('Order Submitted'),
    //   duration:Duration(milliseconds: 500),
    // ),);

    final snackBar = SnackBar(content: Text('Request Submited'));

     return Scaffold(
      appBar: AppBar(title: Text('New Schedule'),),
      body: Container(
        
        padding:const EdgeInsets.all(16.0) ,
        child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 24.0,),
            Text('Pickup Details',
            
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic
            ),
            ),
            SizedBox(height: 24.0,),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                icon: Icon(Icons.person),
                hintText: "What do people call you?",
                labelText: 'Name *',
              ),
              onSaved: (String value){this._name=value;},
            ),
            SizedBox(height: 24.0,),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                icon: Icon(Icons.phone),
                hintText: "Where can we reach you?",
                labelText: 'Phone Number *',
              ),
              
              onSaved: (String value){this._phone=value;},
            ),
            SizedBox(height: 24.0,),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                icon: Icon(Icons.add_location),
                hintText: "Where to find you?",
                labelText: 'Address *',
              ),
              
              onSaved: (String value){this._address=value;},
            ),
            SizedBox(height: 24.0,),
          Text('Item List',
            
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic
            ),
            ),
SizedBox(height: 24.0,),
            Text("Automotive"),
            Checkbox(
              onChanged: (bool value){setState(()=>this._CheckBoxVal=value);},
              value: this._CheckBoxVal,
            ),

            Text("Glass"),
            Checkbox(
              onChanged: (bool value){setState(()=>this._CheckBoxVal1=value);},
              value: this._CheckBoxVal1,
            ),

            Text("Metal"),
            Checkbox(
              onChanged: (bool value){setState(()=>this._CheckBoxVal2=value);},
              value: this._CheckBoxVal2,
            ),

            Text("Organic Waste"),
            Checkbox(
              onChanged: (bool value){setState(()=>this._CheckBoxVal3=value);},
              value: this._CheckBoxVal3,
            ),

            Text("HouseHold"),
            Checkbox(
              onChanged: (bool value){setState(()=>this._CheckBoxVal4=value);},
              value: this._CheckBoxVal4,
            ),

            Text("Paper"),
            Checkbox(
              onChanged: (bool value){setState(()=>this._CheckBoxVal5=value);},
              value: this._CheckBoxVal5,
            ),

            Text("Others"),
            Checkbox(
              onChanged: (bool value){setState(()=>this._CheckBoxVal6=value);},
              value: this._CheckBoxVal6,
            ),

            
            SizedBox(height: 24.0,),
            RaisedButton(
              child: Text('Submit'),
              onPressed: (){SnackBarPage();},
            )
            
            
          ],
        ),
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

