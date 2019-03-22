import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHome(title: 'Hello Flutter'),
    );
  }
}

class MyHome extends StatefulWidget {

  // 继承自父类
  final String title;
  // 构造函数
  MyHome({Key key, @required this.title}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var _count = 0;

  _add() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_count',
              style: TextStyle(fontSize: 80, color: Colors.blue[700]),
            ),
            Text('点击浮动按钮, 修改数字'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        tooltip: 'click this button and add the count',
        onPressed: _add,
      ),
    );
  }
}
