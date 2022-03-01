import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RadioButton Demo',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

enum RadioValue { FIRST, SECOND, THIRD }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  RadioValue _gValue = RadioValue.FIRST;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50.0,),
            RadioListTile(
              title: Text('選択肢 1'),
              value: RadioValue.FIRST,
              groupValue: _gValue,
              onChanged: (value) => _onRadioSelected(value),
            ),
            RadioListTile(
              title: Text('選択肢 2'),
              value: RadioValue.SECOND,
              groupValue: _gValue,
              onChanged: (value) => _onRadioSelected(value),
            ),
            RadioListTile(
              title: Text('選択肢 3'),
              value: RadioValue.THIRD,
              groupValue: _gValue,
              onChanged: (value) => _onRadioSelected(value),
            ),
          ],
        ),
      ),
    );
  }

  _onRadioSelected(value) {
    setState(() {
      _gValue = value;
    });

  }
}