import 'package:flutter/material.dart';

class BmMyPage extends StatelessWidget {
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: getMyWidget(),
    );
  }

  getMyWidget() {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "BmMyPage",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: getMyContent(),
    );
  }

  getMyContent() {
    return new Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 24.0, right: 16.0, left: 16.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                child: Image.asset("lib/image/default_profile.png"),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "贝米用户",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text("积分：1,259 贝米",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          )),
                    ]),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 16.0, left: 16.0),
          child: Divider(
            color: Colors.grey.shade300,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 16.0, left: 16.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        '可用余额',
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 12.0),
                      ),
                    ),
                    Text(
                      '14.68',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade800,
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 12.0),
                padding: EdgeInsets.only(
                    top: 2.0, bottom: 2.0, right: 14.0, left: 14.0),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(24.0),
                  border:
                  new Border.all(color: Colors.red.shade400, width: 2.0),
                  color: Colors.transparent,
                ),
                child: Text('提现',
                    style: TextStyle(
                      color: Colors.red.shade400,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 4.0, bottom: 4.0, right: 16.0, left: 16.0),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(24.0),
                  gradient: new LinearGradient(
                      colors: [Colors.red.shade300, Colors.red.shade600]),
                ),
                child: Text('充值',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
          color: Colors.grey.shade100,
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  "lib/image/ic_lab.png",
                  width: 40.0,
                  height: 40.0,
                ),
                Text('贝米实验室')
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  "lib/image/ic_lab.png",
                  width: 40.0,
                  height: 40.0,
                ),
                Text('贝米实验室')
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  "lib/image/ic_lab.png",
                  width: 40.0,
                  height: 40.0,
                ),
                Text('贝米实验室')
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  "lib/image/ic_lab.png",
                  width: 40.0,
                  height: 40.0,
                ),
                Text('贝米实验室')
              ],
            )
          ],
        ),
        Container(
          margin:
          EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
          child: Divider(
            color: Colors.grey.shade300,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  "lib/image/ic_lab.png",
                  width: 40.0,
                  height: 40.0,
                ),
                Text('贝米实验室')
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  "lib/image/ic_lab.png",
                  width: 40.0,
                  height: 40.0,
                ),
                Text('贝米实验室')
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  "lib/image/ic_lab.png",
                  width: 40.0,
                  height: 40.0,
                ),
                Text('贝米实验室')
              ],
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  "lib/image/ic_lab.png",
                  width: 40.0,
                  height: 40.0,
                ),
                Text('贝米实验室')
              ],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
          color: Colors.grey.shade100,
          height: 16.0,
        ),
        Container(
          padding:
          EdgeInsets.only(top: 4.0, bottom: 4.0, right: 16.0, left: 16.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Image.asset(
                    "lib/image/ic_my_withdraw.png",
                    width: 28.0,
                    height: 28.0,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 8.0), child: Text("我的赎回")),
                ]),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey.shade400,
                ),
              ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Divider(
            color: Colors.grey.shade300,
          ),
        ),
        Container(
          padding:
          EdgeInsets.only(top: 4.0, bottom: 4.0, right: 16.0, left: 16.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Image.asset(
                    "lib/image/ic_my_withdraw.png",
                    width: 28.0,
                    height: 28.0,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 8.0), child: Text("我的赎回")),
                ]),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey.shade400,
                ),
              ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Divider(
            color: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }
}
