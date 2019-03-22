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

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://cdn.yuque.com/yuque/0/2018/jpeg/105925/1531189316478-avatar/aedb1904-7a8b-4250-9bd3-fb3605a0fcad.jpeg?x-oss-process=image/resize,m_fill,w_192,h_192/format,png'),
              ),
              accountEmail: Text('fengjun17@outlook.com'),
              accountName: Text('Wally Fun'),
              otherAccountsPictures: <Widget>[
                Container(
                    child: Image.asset('images/logo.png'),
                  color: Color.fromARGB(100, 200, 30, 70),
                )
              ],
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('http://www.liulongbin.top:3005/images/bg1.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('邮件'),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('个人资料'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('设置'),
            ),
          ],
        ),
      ),
    );
  }
}
