import 'package:first_flutter_app/page/BmInvestPage.dart';
import 'package:first_flutter_app/page/BmMyPage.dart';
import 'package:first_flutter_app/page/ButtonDemo.dart';
import 'package:first_flutter_app/page/CNode.dart';
import 'package:first_flutter_app/page/CustomProgress.dart';
import 'package:first_flutter_app/page/TextFieldDemo.dart';
import 'package:first_flutter_app/page/whatsapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: new HomePageApp(),
    );
  }
}

class HomePageApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageAppState();
  }
}

class HomePageAppState extends State<HomePageApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "DEMO",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              child: new RaisedButton(onPressed: () =>
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          CNodeApp())
                  ),
                child: new Text('CNode'),
              ),
              margin: EdgeInsets.only(bottom: 12.0),
            ),

            Container(
              child: new RaisedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      WhatsApp()),
                );
              },
                child: new Text('WhatsApp'),
              ),
              margin: EdgeInsets.only(bottom: 12.0),
            ),

            Container(
              child: new RaisedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      BmMyPage()),
                );
              },
                child: new Text('BmMyPage'),
              ),
              margin: EdgeInsets.only(bottom: 12.0),
            ),

            Container(
              child: new RaisedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      BmInvestPage()),
                );
              },
                child: new Text('BmInvestPage'),
              ),
              margin: EdgeInsets.only(bottom: 12.0),
            ),

            Container(
              child: new RaisedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      CustomProgress()),
                );
              },
                child: new Text('CustomProgress'),
              ),
              margin: EdgeInsets.only(bottom: 12.0),
            ),

            Container(
              child: new RaisedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      TextFieldDemo()),
                );
              },
                child: new Text('TextField'),
              ),
              margin: EdgeInsets.only(bottom: 12.0),
            ),

            Container(
              child: new RaisedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      ButtonDemo()),
                );
              },
                child: new Text('ButtonDemo'),
              ),
              margin: EdgeInsets.only(bottom: 12.0),
            ),

          ],

        ),
      ),
    );
  }

}
