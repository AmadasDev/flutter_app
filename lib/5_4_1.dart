//  Chapter 5.4.1 Hero

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
      home: HeroPage(),
    );
  }
}
//  여기까지는 공통 코드이다.

//  여기부터 수정한다.
//  첫 번째 페이지
class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HeroDetailPage()),
            );
          },
          child: Hero(
            tag: 'image', //  여기서 작성한 태그와 두 번째 페이지의 태그가 동일해야 함
            /*child: Image.asset(
              'assets/sample.jpg',
              width: 100,
              height: 100,
            ),*/
            child: Image.network('https://picsum.photos/250?image=9'),
          ),
        ),
      ),
    );
  }
}

//  두 번째 페이지
class HeroDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Detail'),
      ),
      body: Hero(
        tag: 'image', //  여기서 작성한 태그와 첫 번째 페이지의 태그가 동일해야 함
        /*child: Image.asset('assets/sample.jpg'),*/
        child: Image.network('https://picsum.photos/250?image=9'),
      ),
    );
  }
}
