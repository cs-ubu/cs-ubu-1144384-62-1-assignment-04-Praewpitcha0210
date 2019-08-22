import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var materialApp = new MaterialApp(
        title: 'Flutter Menu Demo',
        theme: new ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home: 
        new MyHomePage(title: 'Apitcha Store'));
    return materialApp;
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text(widget.title),
        ),
        body: new Center(
          child: new Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
              ),
              new Divider(),
              new Text(
                'ชื่อ นางสาวอภิชญา  ประตังทะสา',textAlign: TextAlign.left,
              ),
              new Text(
                '59110440451',
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.green[500]),
                  Icon(Icons.star, color: Colors.green[500]),
                  Icon(Icons.star, color: Colors.green[500]),
                  Icon(Icons.star, color: Colors.black),
                  Icon(Icons.star, color: Colors.black),
                ],
              ),
              // headerSection,
              new Divider(),
              new Text(
                'Navigation Drawer example',
              ),
              new Divider(),
            ],
          ),
        ),
        // drawer: new Drawer(
        //   child:
        //
        // ), // This trailing comma makes auto-formatting nicer for build methods.

        drawer: new Container(
          constraints: new BoxConstraints.expand(
            width: MediaQuery.of(context).size.width - 20,
          ),
          color: Colors.white,
          alignment: Alignment.center,
          child: new ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              new DrawerHeader(
                  padding: const EdgeInsets.all(0.0),
                  child: new UserAccountsDrawerHeader(
                    accountName: new Text(
                      'Apitchaya Pratangtasa',
                      style: TextStyle(color: Colors.black),
                    ),
                    accountEmail: new Text(
                      'apitchaya.pr.59@ubu.ac.th',
                      style: TextStyle(color: Colors.black),
                    ),
                    // currentAccountPicture: FlutterLogo(),
                    // currentAccountPicture:Image.network(
                    //   'https://d17fnq9dkz9hgj.cloudfront.net/uploads/2012/11/152964589-welcome-home-new-cat-632x475.jpg',
                    //   ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage('https://d17fnq9dkz9hgj.cloudfront.net/uploads/2012/11/152964589-welcome-home-new-cat-632x475.jpg'),
                    ),
                    // currentAccountPicture: new CircleAvatar(
                    //   backgroundColor: Colors.black,
                    // ),
                    decoration: new BoxDecoration(color: Colors.greenAccent),
                  ),
                  decoration: new BoxDecoration(color: Colors.greenAccent)),
              new ListTile(
                  leading: new Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                  title: new Text("เริ่มต้น"),
                  onTap: () {
                    _opennewpage("Start");
                  }),
              new ListTile(
                  leading: new Icon(
                    Icons.supervised_user_circle,
                    color: Colors.lightGreen,
                  ),
                  title: new Text("ประวัติผู้ใช้"),
                  onTap: () {
                    _opennewpage("User History");
                  }),
              new ListTile(
                  leading: new Icon(
                    Icons.history,
                    color: Colors.lightGreen,
                  ),
                  title: new Text("ประวัติการใช้"),
                  onTap: () {
                    _opennewpage("History");
                  }),
              new ListTile(
                  leading: new Icon(
                    Icons.local_cafe,
                    color: Colors.lightGreen,
                  ),
                  title: new Text("ร้านค้า"),
                  onTap: () {
                    _opennewpage("Cafe");
                  }),
              new ListTile(
                  leading: new Icon(
                    Icons.store,
                    color: Colors.lightGreen,
                  ),
                  title: new Text("โปรโมชั่นล่าสุด"),
                  onTap: () {
                    _opennewpage("promotion");
                  }),
              new Divider(),
              new ListTile(
                  leading: new Icon(Icons.close,color: Colors.red,),
                  title: new Text("Close"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ));
  }

Widget headerSection = Container(
  height: 250,
  color: Colors.blue,
);

Widget listSection = Container(
  height: 50,
  color: Colors.blue,
);


  void _opennewpage(s) {
    Navigator.of(context).push(
      new MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Success'),
            ),
            body: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 19.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 19.0),
                          child: FlutterLogo(
                            size: 70.0,
                          ),
                        ),
                        Text(
                          'This is a New Page and you click on ' + s,
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
