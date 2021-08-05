//  Chapter 7.4.1 AppBar 오른쪽 메뉴 추가
//  Chapter 7.5 화면이 3개인 UI 작성
//  Chapter 7.6 현재 위젯을 벗겨내거나 다른 위젯으로 감싸기
//  Chapter 7.7.1 메뉴 만들기
//  Chapter 7.7.2 메뉴를 한 줄에 4개 만들기

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
  var _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('복잡한 UI'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black,  //  앱의 전체 테마를 수정했다면 작성하지 않아도 됨.
            ),
            onPressed: () {},
          ),
        ],
        centerTitle: true,  //  제목을 가운데로
      ),
      body: _pages[_index],
      /*body: Center(
        child: Text(
          '$_index 페이지',
          style: TextStyle(fontSize: 40),
        ),
      ),*/
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

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }

  // 상단
  Widget _buildTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, //  위젯 사이의 공간을 동일한 비율로 정렬하는 의미
      children: <Widget>[
        Column(
          children: [
            Icon(
              Icons.local_taxi,
              size: 40,
            ),
            Text('택시'),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.local_taxi,
              size: 40,
            ),
            Text('블랙'),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.local_taxi,
              size: 40,
            ),
            Text('바이크'),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.local_taxi,
              size: 40,
            ),
            Text('대리'),
          ],
        ),
      ],
    );
  }

  //  중단
  Widget _buildMiddle() {
    return Text('Middle');
  }

  // 하단
  Widget _buildBottom() {
    return Text('Bottom');
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '이용서비스',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '내 정보',
      style: TextStyle(fontSize: 40),
    );
  }
}