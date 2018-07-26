import 'package:flutter/material.dart';

class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Test",
      home: new Scaffold(
          appBar: new AppBar(title: new Text("Test")),
          body: Column(
            children: <Widget>[
              new Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new TextField(
                    maxLines: 8, // 设置输入框显示的最大行数（不是可输入的最大行数）
                    maxLength: 30, // 设置输入框中最多可输入的字符数
                    decoration: new InputDecoration( // 给输入框添加样式
                        hintText: "Input something...", // 输入框中placeholder文本
                        border: new OutlineInputBorder( // 输入框的边框
                            borderRadius:
                            const BorderRadius.all(Radius.circular(1.0)))),
                  )),

              TextFormField(
                decoration: const InputDecoration(
                  border: const UnderlineInputBorder(),
                  filled: true,
                  icon: const Icon(Icons.person),
                  hintText: 'What do people call you?',
                  labelText: 'Name *',
                ),
              ),
            ],
          )),
    );
  }
}
