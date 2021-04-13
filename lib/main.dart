import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MagicBallApp());
}

class MagicBallApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow.shade600,
          title: Center(
            child: Text(
              "Magic 8 Ball",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'Pacifico',
              ),
            ),
          ),
        ),
        body: MagicBall(),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int number = Random().nextInt(5) + 1;
  int randomgenerator() {
    int temp = number;
    while (temp == number) {
      number = Random().nextInt(5) + 1;
    }
    return number;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'ASK ME ANYTHING!!',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 25,
                  fontFamily: 'Fredoka',
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  number = randomgenerator();
                });
              },
              child: Image(
                image: AssetImage('images/ball$number.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
