import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/basic_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 不显示右上角的debug
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: null,
          // ),
          title: Text('FENG JUN'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed'),
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
        bottomNavigationBar: BottomNavigationDemo(),
        drawer: DrawerDemo(),
      ),
    );
  }
}

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://resources.ninghao.org/images/wanghao.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                fit: BoxFit.cover,
                // 设置混合模式
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.6),
                  BlendMode.hardLight,
                ),
              ),
            ),
            accountName: Text('wally fun'.toUpperCase()),
            accountEmail: Text('fengjun@ccsens.com'),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('房间管理'),
            subtitle: Text('进行房间的开闭新增等操作', maxLines: 1,),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.cloud_upload),
            title: Text('上传房间'),
            subtitle: Text('创建自己的房间'),
            // isThreeLine: true,
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('绑定微信'),
          ),

          SizedBox(height: 32.0,),

          Container(
            padding: EdgeInsets.all(16.0),
            child: RaisedButton(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
              color: Colors.red,
              child: Text('退出登录', style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
