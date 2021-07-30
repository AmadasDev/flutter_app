//  Chapter 5.2.3 TimePicker

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
  String _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TimePicker'),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Future<TimeOfDay?> selectedTime = showTimePicker(
                initialTime: TimeOfDay.now(),
                context: context,
              );
              //  여기서 사용자가 시간을 선택할 때까지 코드가 블록됨

              selectedTime.then((timeOfDay) {
                setState(() {
                  _selectedTime = '${timeOfDay.hour}:${timeOfDay.minute}';
                });
              });
            },
            child: Text('Time Picker'),
          ),
          Text('$_selectedTime'),
        ],
      ),
    );
  }
}
