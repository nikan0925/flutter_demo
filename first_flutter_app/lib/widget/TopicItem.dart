import 'package:first_flutter_app/model/TopicBean.dart';
import 'package:first_flutter_app/page/TopicDetailPage.dart';
import 'package:flutter/material.dart';


class TopicItem extends StatelessWidget {
  TopicItem({Key key, this.onTap, @required this.topic}) : super(key: key);

  final Data topic;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.only(bottom: 10.0),
        color: Colors.white,
        child: new InkWell(
          onTap: () =>
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>
                    TopicDetail(markdown: topic.content,)),
              ),
          child: new Column(
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: getTitles(),
              ),

              new Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                child: new Text(topic.title,
                  style: new TextStyle(color: Colors.black, fontSize: 17.0),),
              ),

              new Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                child: new Text(topic.content,
                  maxLines: 2,
                  style: new TextStyle(color: Colors.grey, fontSize: 14.0),),
              ),

              new Container(
                height: 1.0,
                margin: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                color: Colors.grey.shade300,
              ),

              new Container(
                margin: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 4.0, bottom: 4.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Row(
                      children: <Widget>[

                        new CircleAvatar(
                          radius: 10.0,
                          backgroundImage: new NetworkImage(
                              topic.author.avatar_url),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: new Text(topic.author.loginname),
                        ),
                      ],
                    ),

                    new Text(topic.create_at)
                  ],
                ),
              ),

            ],
          ),
        )
    );
  }

  void topicOnClick() {
    print('onclick');
  }

  List<Widget> getTitles() {
    List<Widget> titles = new List<Widget>();

    if (topic.top) {
      titles.add(new Container(
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(4.0),
            color: Colors.lightGreen,
          ),
          margin: EdgeInsets.only(left: 16.0, top: 16.0),
          padding: EdgeInsets.only(left: 4.0, right: 4.0),
          child: new Container(child: new Text(
            '置顶', style: new TextStyle(color: Colors.white),))));
    } else {
      titles.add(new Container(
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(4.0),
            color: Colors.white,
          ),
          margin: EdgeInsets.only(left: 16.0, top: 16.0),
          padding: EdgeInsets.only(left: 4.0, right: 4.0),
          child: null));
    }

    titles.add(new Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 16.0),
      child: Row(
        children: <Widget>[
          new Text(topic.reply_count.toString(),
              style: TextStyle(color: Colors.lightGreen)),
          Padding(
            padding: const EdgeInsets.only(right: 4.0, left: 4.0),
            child: new Text("/"),
          ),
          new Text(topic.visit_count.toString())
        ],
      ),
    ));

    return titles;
  }


}
