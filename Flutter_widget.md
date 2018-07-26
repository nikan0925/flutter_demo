### MaterialApp、Scaffold

- MaterialApp 是一个方便的 Widget，它封装了应用程序实现 Material Design 所需要的一些 Widget。（[参考](https://docs.flutter.io/flutter/material/MaterialApp-class.html)）
- Scaffold 组件是 Material Design 布局结构的基本实现。此类提供了用于显示 drawer、snackbar 和底部 sheet 的 API。（[参考](https://docs.flutter.io/flutter/material/Scaffold-class.html)）

```
  @override
  Widget build(BuildContext context) {
    initData();
    return new MaterialApp(
      theme: new ThemeData(
        // 设置主题颜色
        primaryColor: const Color(0xFF63CA6C)
      ),
      home: new Scaffold(
        // 设置App顶部的AppBar
        appBar: new AppBar(
          // AppBar的标题
          title: new Text(appBarTitles[_tabIndex], 
          // 标题文本的颜色
          style: new TextStyle(color: Colors.white)),
          // AppBar上的图标的颜色
          iconTheme: new IconThemeData(color: Colors.white)
        ),
        body: _body,
        // 页面底部的导航栏
        bottomNavigationBar: new CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                icon: getTabIcon(0),
                title: getTabTitle(0)),
            new BottomNavigationBarItem(
                icon: getTabIcon(1),
                title: getTabTitle(1)),
            new BottomNavigationBarItem(
                icon: getTabIcon(2),
                title: getTabTitle(2)),
            new BottomNavigationBarItem(
                icon: getTabIcon(3),
                title: getTabTitle(3)),
          ],
          currentIndex: _tabIndex,
          // 底部Tab的点击事件处理
          onTap: (index) {
            setState((){
              _tabIndex = index;
            });
          },
        ),
        // 侧滑菜单，这里的MyDrawer是自定义的Widget
        drawer: new MyDrawer(),
      ),
    );
  }

```

### Text
```
import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: "Text Demo",
  home: new Scaffold(
    appBar: new AppBar(
      title: new Text("Text Demo"),
    ),
    body: new Center(
      child: new Text(
        "Hello Flutter",
        style: new TextStyle(
          color: Colors.red, // const Color(0xFF6699FF) 必须使用AARRGGBB
          fontSize: 20.0, // 字号
          fontWeight: FontWeight.bold, // 字体加粗
          fontStyle: FontStyle.italic, // 斜体
          decoration: new TextDecoration.combine([TextDecoration.underline]) // 文本加下划线
        ),
      ),
    ),
  ),
));

```

### TextField、TextFormField
输入框
```
class MyApp extends StatelessWidget {
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

```

### InkWell和、GestureDetector
InkWell: ripple点击效果
```
  new InkWell(
    child: new Text("Click me!"),
    onTap: () {
    },
    onDoubleTap: () {
    },
    onLongPress: () {
    }
  );

```

GestureDetector: 更详细的手势操作(移动、缩放等等) [文档](https://docs.flutter.io/flutter/widgets/GestureDetector-class.html)


### 按钮

Flutter提供了几种类型的按钮组件：```RaisedButton``` ```FloatingActionButton``` ```FlatButton``` ```IconButton``` ```PopupMenuButton```


### Image
加载项目中的图片

    new Image.asset("lib/image/icon.png", width: 20.0, height: 20.0, fit: BoxFit.cover)

fit 的属性
- contain：尽可能大，保持图片完整
- cover：填充整个布局
- fill：填充布局，会拉伸
- fitHeight: 高度填充满，会裁剪宽度
- fitWidth: 宽度填充满，会裁剪高度
- none：对齐目标容器内的图片（默认情况下居中）并丢弃位于容器外的图片的任何部分。图片原始大小不会被调整
- scaleDown：对齐目标容器内的图片（默认情况下居中），如果必要的话，对图片进行缩放，以确保图片适合容器。这与```contain```的情况相同，否则它与没有一样

加载网络图片：

    new Image.network(imgUrl, width: 20.0, height: 20.0, fit: BoxFit.cover)


# 布局控件

### Center
Center组件中的子组件会居中显示。Center组件会尽可能的大，如果你不给它设置任何约束。

    return new MaterialApp(
      title: "Test",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Test")
        ),
        body: new Center(
          child: new Text("hello world")
        ),
      ),
    );

### Container
Container是使用非常多的一个布局容器，关于Container容器的显示规则，有如下几条：

- 如果Container中没有子组件，则Container会尽可能的大
- 如果Container中有子组件，则Container会适应子组件的大小
- 如果给Container设置了大小，则Container按照设置的大小显示
- Container的显示规则除了跟自身约束和子组件有关，跟它的父组件也有关


### Padding
设置内边距
```
new Padding(
  padding: new EdgeInsets.all(8.0),
  child: const Card(child: const Text('Hello World!')),
)
```

### Align
```
new Container(
  width: 100.0,
  height: 100.0,
  color: Colors.red,
  child: new Align(
    child: new Text("hello"),
    alignment: Alignment.bottomRight,
  ),
)
```

### FittedBox
FittedBox 组件根据 fit 属性来确定子组件的位置

```
new Container(
  width: 200.0,
  height: 100.0,
  color: Colors.red,
  child: new FittedBox(
    child: new Text("hello world"),
    fit: BoxFit.fill,
  )
)

```

![](https://user-gold-cdn.xitu.io/2018/7/23/164c75ebe790386c?imageView2/0/w/425/h/320/format/webp/ignore-error/1) ![](https://user-gold-cdn.xitu.io/2018/7/23/164c75edb73d06ee?imageView2/0/w/425/h/320/format/webp/ignore-error/1)![](https://user-gold-cdn.xitu.io/2018/7/23/164c75ef9d63d086?imageView2/0/w/425/h/320/format/webp/ignore-error/1)
![](https://user-gold-cdn.xitu.io/2018/7/23/164c75ff1c6e60b2?imageView2/0/w/425/h/320/format/webp/ignore-error/1)![](https://user-gold-cdn.xitu.io/2018/7/23/164c76019a48c721?imageView2/0/w/425/h/320/format/webp/ignore-error/1)![](https://user-gold-cdn.xitu.io/2018/7/23/164c7603b3b1f94e?imageView2/0/w/425/h/320/format/webp/ignore-error/1)




### AspectRatio

```
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Test",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Test")
        ),
        body: new AspectRatio(
          // Container组件按16：9(width / height)显示
          aspectRatio: 16.0 / 9.0,
          child: new Container(
            color: Colors.red,
          ),
        )
      ),
    );
  }
}

```

如果将aspectRatio设置为1.0，则Container显示为正方形。(注意，Dart中/代表除法运算，不是取整运算，使用~/做取整运算)

### IntrinsicWidth & IntrinsicHeight
这两个组件的作用是将他们的子组件调整到组件本身的宽度/高度。

这个类是非常有用的，例如，当宽度/高度没有任何限制时，你会希望子组件按更合理的宽度/高度显示而不是无限的扩展。


### LimitedBox
LimitedBox是一个当其自身不受约束时才限制其大小的容器。

如果这个组件的最大宽度是没有约束，那么它的宽度就限制在```maxWidth```。类似地，如果这个组件的最大高度没有约束，那么它的高度就限制在```maxHeight```。


### Offstage

Offstage组件用于显示或隐藏它的子组件，如下代码所示：

```
new Offstage(
  offstage: false, // true: 隐藏， false: 显示
  child: new Text("hello world"),
)
```

### OverflowBox & SizedOverflowBox
OverflowBox组件它给它的子组件带来不同的约束，而不是从它的父组件中得到，可能允许子组件溢出到父组件中。

SizedOverflowBox组件是一个指定大小的组件，它的约束会传递给子组件，子组件可能溢出。

### SizedBox
SizedBox是一个指定了大小的容器。

如果指定了SizedBox的大小，则子组件会使用SizedBox的大小，如果没有指定SizedBox的大小，则SizedBox会使用子组件的大小。如果SizedBox没有子组件，SizedBox会按它自己的大小来显示，将nulls当作0。

```
  // 如果指定width和height，则Container按照指定的大小显示，而不是Container自己的大小，
  // 如果没有指定width和height，则SizedBox按照Container的大小显示
new SizedBox(
  width: 50.0,
  height: 50.0,
  child: new Container(
    color: Colors.red,
    width: 300.0,
    height: 300.0,
  ),
)
```

### Transform
Transform用于在绘制子组件前对子组件进行某些变换操作，比如平移、旋转、缩放等。

```
new Container(
  color: Colors.black,
  child: new Transform(
    alignment: Alignment.topRight,
    transform: new Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
    child: new Container(
      padding: const EdgeInsets.all(8.0),
      color: const Color(0xFFE8581C),
      child: const Text('Apartment for rent!'),
    ),
  ),
)
```
![](https://user-gold-cdn.xitu.io/2018/7/24/164cb0fedc484c28?imageView2/0/w/625/h/420/format/webp/ignore-error/1)



# 包含多个子组件的widget

### Row 行、Column 列
### Stack 层叠
### IndexedStack 按index来显示child
```
new IndexedStack(
  index: 1,
  children: <Widget>[
    new Container(
      width: 100.0,
      height: 100.0,
      color: Colors.red,
      child: new Center(
        child: new Text("index: 0", style: new TextStyle(fontSize: 20.0),),
      ),
    ),
    new Container(
      width: 100.0,
      height: 100.0,
      color: Colors.green,
      child: new Center(
        child: new Text("index: 1", style: new TextStyle(fontSize: 20.0),),
      ),
    )
  ],
)
```
IndexedStack的构造方法中有个index属性，上面的index属性为1，则显示的是children数组中的第2个元素（绿色方块），如果index改为0，则显示的是第1个元素（红色方块），如果index的大小超过了children数组的长度，则会报错。


### Table
Table组件用于显示多行多列的布局，如果只有一行或者一列，使用Row或者Column更高效。下面用一段代码展示Table的用法：
```
class MyApp extends StatelessWidget {

  // 生成Table中的数据
  List<TableRow> getData() {
    var data = [
      "hello",
      "world"
    ];
    List<TableRow> result = new List<TableRow>();
    TextStyle style = new TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold);
    for (int i = 0; i < data.length; i++) {
      String str = data[i];
      List<Widget> row = new List();
      for (int j = 0; j < str.length; j++) {
        row.add(new Text(" ${str[j]} ", style: style));
      }
      result.add(new TableRow(
        children: row
      ));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Test",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Test")
        ),
        body: new Table(
          children: getData()
        )
      ),
    );
  }
}
```
![](https://user-gold-cdn.xitu.io/2018/7/24/164cb9f83a149b3e?imageView2/0/w/625/h/420/format/webp/ignore-error/1)


### Wrap

Wrap组件可以在水平或垂直方向上多行显示其子组件，下面是示例代码：

```
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Test",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Test")
        ),
        body: new Wrap(
          spacing: 5.0, // 水平方向上两个子组件的间距
          runSpacing: 20.0, // 两行的垂直间距
          children: <Widget>[
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
            new Text("hello"),
          ],
        )
      ),
    );
  }
}
```
![](https://user-gold-cdn.xitu.io/2018/7/24/164cbb35d001c572?imageView2/0/w/625/h/420/format/webp/ignore-error/1)
![](https://upload-images.jianshu.io/upload_images/2365010-6131054e6ae4b7a4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/480)




