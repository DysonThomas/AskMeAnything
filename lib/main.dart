import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Text('Ask Me Anything....'),
            backgroundColor: Colors.teal,
          ),
          body: eightBall(),
        ),
      ),
    );

class eightBall extends StatefulWidget {
  @override
  _eightballState createState() => _eightballState();
}

class _eightballState extends State<eightBall> {
  int anskey = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: () {
            setState(() {
              anskey = Random().nextInt(4) + 1;
            });
          },
          child: Image.asset('images/ball$anskey.png'),
        ),
      ),
    );
  }
}
