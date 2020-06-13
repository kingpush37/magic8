import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    )
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(
                  Icons.email,
                color: Colors.blue,
              )
            ),
            IconButton(
              icon: Icon(
                  Icons.notifications_none,
                color: Colors.blue,
              ),
            ),
          ],
          leading: Icon(
            Icons.question_answer,
            color: Colors.blue,
          ),
          elevation: 20,
          backgroundColor: Colors.white12,
          title: Center(
              child: Text(
                  'Ask Me Anything',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
          ),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              setState(() {
              ballNumber = Random(DateTime.now().millisecond).nextInt(5) + 1;
              print(ballNumber);
              });
            },
            child: Image.asset(
                'images/ball$ballNumber.png'
            ),
        ),
      ),
    );
  }
}



