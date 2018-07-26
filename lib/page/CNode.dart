import 'package:first_flutter_app/model/TopicBean.dart';
import 'package:first_flutter_app/net/DataModel.dart';
import 'package:first_flutter_app/widget/TopicItem.dart';
import 'package:flutter/material.dart';

class CNodeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: CNodeAppPage(),
    );
  }
}

class CNodeAppPage extends StatefulWidget {
  CNodeAppPage({Key key}) : super(key: key);

  @override
  HomeAppPageState createState() => new HomeAppPageState();
}

class HomeAppPageState extends State<CNodeAppPage> {
  TopicBean topicBean;

  @override
  void initState() {
    super.initState();
    DataModel dataModel = new DataModel();
    dataModel.getData().then((topic) => setState(() => topicBean = topic));

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "CNode社区",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: topicBean == null ? new Text('loading') : new Container(
        color: Colors.grey.shade300,
        child: new ListView.builder(
            itemCount: topicBean.data.length,
            itemBuilder: (BuildContext context, int position) {
              return new TopicItem(topic: topicBean.data[position]);
            }),
      ),
      drawer: homeDrawer(),
    );
  }

  Widget homeDrawer() {
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            child: new Text('Drawer Header'),
            decoration: new BoxDecoration(
              color: Colors.blue,
            ),
          ),
          new ListTile(
            title: new Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: new Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
