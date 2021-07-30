//  Chapter 5.2.2 DatePicker

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
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late DateTime _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker'),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Future<DateTime?> selectedDate = showDatePicker(
                context: context,
                initialDate: DateTime.now(),  //  초기값
                firstDate: DateTime(2018),  //  시작일
                lastDate: DateTime(2030), //  마지막일
                builder: (BuildContext context, Widget child) {
                  return Theme(
                    data: ThemeData.dark(), //  다크 테마
                    child: child,
                  );
                },
              );
              //  여기서 사용자 날짜를 선택할 때까지 코드가 블록됨
              selectedDate.then((dateTime) {
                setState(() {
                  _selectedTime = dateTime!;
                });
              });
            },
            child: Text('Date Picker'),
          ),
          Text('$_selectedTime'),
        ],
      ),
    );
  }
}
