//  Chapter 7.2 뼈대 구성
//  Chapter 7.3 BottomNavigationBar 위젯을 이용한 하단 탭 구성
//  Chapter 7.3.1 하단 탭 구성
//  Chapter 7.4 AppBar 수정

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0; //  페이지 인덱스 0, 1, 2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,  //  배경색을 흰색으로
        title: Text(
          '복잡한 UI',
          style: TextStyle(color: Colors.black),  //  글자색을 검은색으로
        ),
        centerTitle: true,  //  제목을 가운데로
      ),
      body: Center(
        child: Text(
          '$_index 페이지',
          style: TextStyle(fontSize: 40),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index; //  선택된 탭의 인덱스로 _index를 변경
          });
        },
        currentIndex: _index, //  선택된 인덱스
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '이용서비스',
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            label: '내 정보',
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
