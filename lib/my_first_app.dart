import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class FirstApp extends StatefulWidget {
  @override
  _FirstAppState createState() => _FirstAppState();
}

RandomColor _randomColor = RandomColor();

Color _color = _randomColor.randomColor();

class _FirstAppState extends State<FirstApp> {
  int _calc = 1;

  void _clicklLong() {
    print('cliclou long');

    _color = _randomColor.randomColor();
    setState(() {
      _calc = 1;
    });
  }

  void _clickShort() {
    print('cliclou short');
    _color = _randomColor.randomColor();
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
            style: TextStyle(color: _color, fontSize: 28),
          ),
        ),
        onTap: _clickShort,
        onLongPress: _clicklLong,
      ),
    );
  }
}
