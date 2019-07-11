import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerBoxDecorationDemo();
  }
}

class ContainerBoxDecorationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color 与 decoration中的color不能同时设置
      // color: Colors.blueGrey.withOpacity(0.1),
      padding: EdgeInsets.all(32.0),
      decoration: BoxDecoration(
          // color: Colors.red,
          image: DecorationImage(
        image: NetworkImage('https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
        alignment: Alignment.topCenter,
        // repeat: ImageRepeat.repeatY,
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.redAccent[400].withOpacity(0.3),
          BlendMode.hardLight,
        ),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 16, 20, 188),
                border: Border.all(
                  color: Colors.blueAccent[100],
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 16.0),
                    color: Color.fromRGBO(16, 20, 188, 1.0),
                    blurRadius: 25.0,
                    spreadRadius: -9.0,
                  )
                ],
                shape: BoxShape.circle, // 圆形
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.redAccent[100],
                    Colors.redAccent,
                    Colors.green,
                    Colors.yellowAccent[100],
                  ],
                  stops: [0.0, 0.3, 0.75, 1.0], // 与colors一一对应 颜色的位置
                )),
          ),
          RichTextDemo(),
          TextDemo(),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'FENGJUN',
          style: TextStyle(
            color: Colors.deepOrange[400],
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w800,
          ),
          children: [
            TextSpan(
                text: '.xyz',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.red,
                  decoration: TextDecoration.underline,
                ))
          ]),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《 $_title 》—— $_author。君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
