import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        title: Text(
          "Ask Me Anything",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: MagicBall(),
    ),
  ));
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballChange = 1;

  void changeBallState() {
    setState(() {
      ballChange = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeBallState();
              },
              child: Image.asset('images/ball$ballChange.png'),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 40.0, bottom: 60.0, right: 40.0),
            child: Row(
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white,
                    elevation: 10,
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          "Ask anything to the ball and click \n  on the ball to know your answer !",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
