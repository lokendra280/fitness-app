import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorExample extends StatefulWidget {
  @override
  _ProgressIndicatorExampleState createState() =>
      _ProgressIndicatorExampleState();
}

class _ProgressIndicatorExampleState extends State<ProgressIndicatorExample> {
  double _progress = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        LinearProgressIndicator(
          value: _progress,
        ),
        MaterialButton(
          child: Text('Start Progress'),
          onPressed: () {
            setState(() {
              _progress = 0;
            });
            _animateProgress();
          },
        ),
      ],
    );
  }

  void _animateProgress() async {
    while (_progress < 1) {
      await Future.delayed(Duration(milliseconds: 50));
      setState(() {
        _progress += 0.01;
      });
    }
  }
}
