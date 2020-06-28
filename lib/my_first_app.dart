import 'package:flutter/material.dart';

class FirstApp extends StatefulWidget {
  @override
  _FirstAppState createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  int _calc = 1;
  void _clicklLong() {
    print('cliclou long');
    setState(() {
      _calc = 1;
    });
  }

  void _clickShort() {
    print('cliclou short');

    setState(() {
      _calc = _calc * 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Flutter app'),
      ),
      body: GestureDetector(
        child: Center(
          child: Text(
            'Calc: $_calc',
            style: TextStyle(fontSize: 28),
          ),
        ),
        onTap: _clickShort,
        onLongPress: _clicklLong,
      ),
    );
  }
}
