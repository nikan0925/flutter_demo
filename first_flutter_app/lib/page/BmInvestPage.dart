import 'package:flutter/material.dart';

class BmInvestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: getInvestWidget(),
    );
  }

  getInvestWidget() {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(
          "BmMyPage",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: getContent(),
    );
  }

  getContent() {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.grey.shade100,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, bottom: 8.0, left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "分红计划0617-4756",
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                    Text("10.00%",
                        style: TextStyle(color: Colors.black, fontSize: 16.0))
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade200,
                height: 12.0,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    child: Text(
                      "投资金额",
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                    padding: EdgeInsets.only(top: 16.0, left: 16.0),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                    child: Text(
                      "剩余可投额度 ¥5,000,000",
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                    padding: EdgeInsets.only(top: 16.0, right: 16.0),
                    alignment: Alignment.topRight,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 16.0, left: 16.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "¥",
                      style: TextStyle(color: Colors.black, fontSize: 24.0),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade300,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 4.0, bottom: 4.0, left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "优惠券",
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                    Row(
                      children: <Widget>[
                        Text("有2张可用",
                            style:
                                TextStyle(color: Colors.black, fontSize: 14.0)),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey.shade600,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade300,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    onChanged: (bool value) {},
                    value: false,
                  ),
                  Text("开启自动复投", style: TextStyle(color: Colors.grey.shade700)),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child:
                        Text("《自动复投服务协议》", style: TextStyle(color: Colors.red)),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 16.0),
                  alignment: Alignment.center,
                  child: Text("当前余额：¥0.00")),

              Container(
                margin: EdgeInsets.only(top: 16.0),
                padding: EdgeInsets.only(top: 12.0, bottom: 12.0, right: 110.0, left: 110.0),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(24.0),
                  gradient: new LinearGradient(colors: [Color(0xffff7451), Color(0xfff05a50)]),
                ),

                child: Text("确认投资", style: TextStyle(color: Colors.white,fontSize: 16.0)),

              ),


            ],
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.asset(
                "lib/image/ic_secuity.png",
                width: 16.0,
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text("账户资金由众安保险和贝米钱包保障"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
