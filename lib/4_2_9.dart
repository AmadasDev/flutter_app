//  Chapter 4.2.9 AppBar, TabBar, Tab, TabBarView

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
//  여기까지는 공통 코드이다.

//  여기부터 수정한다.
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(  //  Scaffold를 감싸고
      length: 3,  //  탭 수 지정
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab'),
          bottom: TabBar( //  Scaffold의 bottom 프로퍼티에 TabBar 지정
            tabs: <Widget>[ //  tabs 프로퍼티에 Tab의 리스트 지정
              Tab(icon: Icon(Icons.tag_faces)),
              Tab(text: '메뉴2'),
              Tab(icon: Icon(Icons.info), text: '메뉴3'),
            ],
          ),
        ),
        body: TabBarView( //  Scaffold의 body 프로퍼티는 TabBarView 배치
          children: <Widget>[ //  children 프로퍼티에 표시할 화면 배치
            Container(color: Colors.yellow,),
            Container(color: Colors.orange,),
            Container(color: Colors.red,),
          ]),
        ),
    );
  }
}
