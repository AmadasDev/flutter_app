//  Chapter 4.4.3 IconButton

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
    return Scaffold(
        appBar: AppBar(
          title: Text('Icon'),
        ),
        body: IconButton(
          icon: Icon(Icons.add),
          color: Colors.red,  //  아이콘 색상
          iconSize: 100.0,  //  기본값 24.0
          onPressed: () {},
          //  실행될 코드 작성
        )
    );
  }
}
