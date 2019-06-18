import 'package:flutter/material.dart';
import './demo/layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Layout',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
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
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('drawer'),
      ),
      body: Container(
        child: LayoutDemo(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        // 当items超过三个 需要设置这个属性  才能看到
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('收藏')),
          BottomNavigationBarItem(icon: Icon(Icons.message), title: Text('消息')),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), title: Text('我的')),
        ],
        // 选中项的颜色
        fixedColor: Colors.yellow[900],
        onTap: _selectItem,
      ),
    );
  }

  // 设置BottomNavigationBarItem的索引值
  _selectItem(int index) {
    print('index: $index');
    setState(() {
      _index = index;
    });
  }
}
