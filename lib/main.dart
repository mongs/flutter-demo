import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '复杂widget',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        // 高亮色
        highlightColor: Colors.yellowAccent,
        // 水波纹颜色
        splashColor: Colors.yellow[800],
      ),
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

class MyBody extends StatefulWidget {
  final Widget child;

  MyBody({Key key, this.child}) : super(key: key);

  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: new Text('tabbar'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings_bluetooth),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings_input_hdmi),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.blueGrey,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3.0,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.shopping_basket),
              ),
              Tab(
                icon: Icon(Icons.card_giftcard),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.card_membership, size: 120.0, color: Colors.black26),
            Icon(Icons.category, size: 120.0, color: Colors.black26),
            Icon(Icons.receipt, size: 120.0, color: Colors.black26),
          ],
        ),
      ),
    );
  }
}
