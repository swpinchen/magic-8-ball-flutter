import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage()
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {

    void rollBall() {
      int randomNumber;
      do {
        randomNumber = Random().nextInt(5) + 1;
      } while (randomNumber == ballNumber);

      setState(() {
        ballNumber = randomNumber;
      });
      print('Ball number is $ballNumber');
    }

    return
      Center(
        child: TextButton(
          onPressed: () {
            print('I got clicked');
            rollBall();
          },
          child: Image(
            image: AssetImage('images/ball$ballNumber.png'),
          ),
        ),
      );
  }
}

