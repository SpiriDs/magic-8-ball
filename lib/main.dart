import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallHomePage(),
      ),
    );

class BallHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue[300],
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
          ),
          backgroundColor: Colors.blueAccent[700],
        ),
        body: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNo = 1;

  void answer() {
    ballNo = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              highlightColor: Colors.lightBlue[300],
              splashColor: Colors.lightBlue[300],
              onPressed: () {
                setState(() {
                  answer();
                });
              },
              child: Image.asset(
                'images/ball$ballNo.png',
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}
