import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}



class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final _tab = <Widget> [  // タブバーの表示
    Container(
      child: Row(
        children: [
          Icon(Icons.directions_railway),
          Text('Railway'),
        ],
      ),
    ),
    Container(
      child: Row(
        children: [
          Icon(Icons.directions_subway),
          Text('Subway'),
        ],
      ),
    ),
    Container(
      child: Row(
        children: [
          Icon(Icons.directions_walk),
          Text('Walk'),
        ],
      ),
    ),
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(  // タブを制御
      length: _tab.length,  // タブの数
      child: Scaffold(
        appBar: AppBar(
          title: const Text("KoheiSample"),
          bottom: TabBar(  // タブバー
            tabs: _tab,
          ),
        ),
        body: TabBarView(  // 表示画面のウィジェット一覧を渡す
            children: <Widget> [
              TabPage(title: "Railway", icon: Icons.directions_railway),
              TabPage(title: "Subway", icon: Icons.directions_subway),
              TabPage(title: "Walk", icon: Icons.directions_walk),
            ]
        ),
      ),
    );
  }
}

class TabPage extends StatelessWidget {

  final IconData? icon;
  final String? title;

  const TabPage({Key? key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headline4;  // 文字のスタイル
    return Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 72.0, color: textStyle?.color),
          Text(title!, style: textStyle),
        ],
      ),
    );
  }
}