import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar : new AppBar(title:new Text("My Drawer App"), backgroundColor: Colors.greenAccent,),
      body: new Center(
        child: new Text("HomePage", style: new TextStyle(fontSize: 30.0),),
      ),
    );
  } 
}

class Txext {
}