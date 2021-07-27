//  Chapter 3.2 샘플 앱 분석하기

import 'package:flutter/material.dart';

//  앱 시작 부분
void main() => runApp(MyApp());

//  시작 클래스. 머티리얼 디자인 앱 생성
/*
	StatelessWidget 클래스는 상태를 가지지 않는 위젯을 구성하는 기본 클래스이다.
	여기서 상태를 가지지 않는다는 것은 한 번 그려진 후 다시 그리지 않는 경우이며,
	이러한 클래스는 프로퍼티로 가지지 않는다.(상수는 가질 수 있다.)
*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),  //  표시할 화면의 인스턴스
    );
  }
}

//  시작 클래스가 실제로 표시하는 클래스. 카운터 앱 화며
/*
	StatefulWidget 클래스는 상태가 있는 위젯을 정의할 때 사용한다.
	StatefulWidget을 상속받은 MyHomePage 클래스와 State<MyHomePage> 클래스를 상속받은 _MyHomePageState 클래스로 구성된다.
*/
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  //  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//  위 MyHomePage 클래스의 상태를 나타내는 State 클래스
/*
	State 클래스에는 주로 상태를 저장할 변수들과 그 변수를 조작할 메서드를 작성한다.
*/
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; //  화면에 표시할 상태값인 카운터 숫자

  // counter 변수를 1 증가시키고 화면을 다시 그리는 메서드
  void _incrementCounter() {
    setState(() { //  화면을 다시 그리도록 하는 함수. StatefulWidget만 가능
      _counter++;
    });
  }

//  화면에 UI를 그리는 메서드. 그려질 위젯을 반환
  @override
  Widget build(BuildContext context) {
    return Scaffold(  //  Scaffold 클래스는 머티리얼 디자인 앱을 만들 때 뼈대가 되는 위젯이다.
      appBar: AppBar(  //  상단 앱바
        title: Text(widget.title),  //  상태 클래스에서 StatefulWidget 클래스에 접근하려면 widget 프로퍼티를 사용한다.
      ),
      body: Center( //  표시할 내용
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',  //  _counter 변수를 표시(문자열 형태로 변경하고자 할때는 변수 앞에 $ 기호를 붙인다.)
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, //  클릭 시 _incrementCounter() 메서드 실행
        tooltip: 'Increment',
        child: Icon(Icons.add), //  상단 앱바
      ),
    );
  }
}