//  Chapter 5.4.4 SliverAppBar와 SliverList

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
      home: SliverListPage(),
    );
  }
}
//  여기까지는 공통 코드이다.

//  여기부터 수정한다.
class SliverListPage extends StatelessWidget {
  //  'No. 0'에서 'No. 49'까지 표시하는 ListTitle을 담은 리스트
  final _items = List.generate(50, (i) => ListTile(title: Text('No. $i')));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar( //  헤더 영역
            pinned: true, //  축소될 때 상단에 AppBar가 고정될지 사라질지 설정
            expandedHeight: 180.0,  //  확대될 때의 최대 높이(헤더의 최대 높이)
            flexibleSpace: FlexibleSpaceBar(  //  확대/축소되는 영역의 UI 작성(늘어나는 영역의 UI 정의)
              title: Text('Sliver'),
              /*background: Image.asset(
                'assets/sample.jpg',
                fit: BoxFit.cover,
              ),*/
              background: Image.network('https://picsum.photos/250?image=9'),
            ),
            actions: <Widget>[
              IconButton(
                icon: Image.asset('assets/github_icon.png'),
                onPressed: () {},
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate(_items),
          ),
        ],
      ),
    );
  }
}
