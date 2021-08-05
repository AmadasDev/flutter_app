//  Chapter 7.8.2 슬라이더 작성

import 'package:carousel_slider/carousel_slider.dart';
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
  // 각 메뉴를 눌렀을 때 클릭이 되게 하려면 메뉴의 Column을 GestureDetector로 감싸고 onTap 프로퍼티를 정의한다.
  // GestureDetector 위젯은 애니메이션 효과는 없다. 시각적으로 클릭된 것을 표현하고 싶다면 InWell 위젯을 사용하면 된다.
  Widget _buildTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, //  위젯 사이의 공간을 동일한 비율로 정렬하는 의미
      children: <Widget>[
        GestureDetector(
          onTap: () {
            print('클릭');
          },
          child: Column(
            children: [
              Icon(
                Icons.local_taxi,
                size: 40,
              ),
              Text('택시'),
            ],
          ),
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
        Opacity(
          opacity: 0.0, //  투명(0.0), 불투명(1.0)
          child: Column(
            children: [
              Icon(
                Icons.local_taxi,
                size: 40,
              ),
              Text('대리'),
            ],
          ),
        ),
      ],
    );
  }

  //  중단
  Widget _buildMiddle() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400.0,  //  높이 400
      ),
      items: [1,2,3,4,5].map((i) {  //  다섯 페이지
        return Builder(
          builder: (BuildContext context) { //  context를 사용하고자 할 때
            return Container(
              width: MediaQuery.of(context).size.width, //  기기의 가로 길이
              margin: EdgeInsets.symmetric(horizontal: 5.0),  //  좌우 여백 5
              decoration: BoxDecoration(
                color: Colors.amber //  배경색
              ),
              child: Text('text $i', style: TextStyle(fontSize: 16.0),)
            );
          },
        );
      }).toList(),
    );
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