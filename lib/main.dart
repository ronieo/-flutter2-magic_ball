import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );

class BallPage extends StatefulWidget {
  const BallPage({key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  int ballNum = 0;

  void changeBallNum () {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Ask Me Everything'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            print('I got cliked!!');
            changeBallNum();
          },
          child: Image.asset(
              'images/ball$ballNum.png'
          ),
        ),
      ),
    );
  }
}


