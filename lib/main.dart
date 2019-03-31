import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TabBar',
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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text('drawer'),
        ),
        body: null,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      new NetworkImage('http://fengjun.xyz/uploads/avatar.jpg'),
                ),
                accountEmail: Text('29176702@qq.com'),
                accountName: Text('Wally fun'.toUpperCase()),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        NetworkImage('http://fengjun.xyz/uploads/avatar.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.6), BlendMode.srcOver),
                  ),
                ),
                onDetailsPressed: () {
                  print('hello');
                },
              ),
              ListTile(
                title: Text('我的收藏'),
                subtitle: Text('what'),
                leading: Icon(Icons.favorite),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black26,
                  size: 14.0,
                ),
                // 点击关闭drawer
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ));
  }
}
