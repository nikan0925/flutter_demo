import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class TopicDetail extends StatelessWidget {
  TopicDetail({Key key, this.markdown}) : super(key: key);

  String markdown;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),

      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("话题", style: TextStyle(color: Colors.white)),
        ),

        body: new Text(markdown),
      ),
    );
  }
}
