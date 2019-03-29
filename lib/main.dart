import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '复杂widget',
      home: new MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MyBody();
  }
}

// 控制显示数字widget
class CounterDisplay extends StatelessWidget {
  final int count;

  CounterDisplay({Key key, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('count: $count'),
    );
  }
}

// 用来控制操作的widget
class CounterIncrementor extends StatelessWidget {
  final VoidCallback onPressed;

  CounterIncrementor({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new FloatingActionButton(
      child: new Icon(Icons.add),
      onPressed: onPressed,
    );
  }
}

class MyBody extends StatefulWidget {
  final Widget child;

  MyBody({Key key, this.child}) : super(key: key);

  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('复杂widget'),
      ),
      body: new CounterDisplay(count: _counter),
      floatingActionButton: new CounterIncrementor(
        onPressed: _increment,
      ),
    );
  }
}
