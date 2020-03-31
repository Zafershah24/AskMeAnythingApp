import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Magic Ball'),),
      ),
          body: Ball(),
    ));
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballno=1;
  @override

  Widget build(BuildContext context) {
    return Center(
      
      child: FlatButton(
        onPressed: (){
          setState(() {
            ballno=Random().nextInt(5)+1;

          });

        },

          child: Image.asset('images/ball$ballno.png'),),
    );
  }
}
