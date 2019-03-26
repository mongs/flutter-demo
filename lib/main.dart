import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyAppBar extends StatelessWidget {
  // 继承widget
  final Widget title;

  MyAppBar({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(
        color: Colors.red[700],
      ),
      child: new Row(
        children: <Widget>[
          new IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip: 'navigation menu',
          ),
          new Expanded(child: title),
          new IconButton(
              icon: Icon(Icons.search), tooltip: 'search', onPressed: null),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('title'),
      ),
      body: new Material(
        child: new Column(
          children: <Widget>[
            // 传递widget
            new MyAppBar(
              title: new Text(
                'Widget Title',
                style: Theme.of(context).primaryTextTheme.title,
              ),
            ),
            new Expanded(
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.red[100],
                ),
                child: new Center(
                  child: new Text('hello Expanded'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'widget概览',
      home: new MyScaffold(),
    );
  }
}
