import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 18, 110, 130),
            title: Text(
              'Ask me! - Sri Balaji',
              style: TextStyle(
                color: Colors.white,
                // fontFamily: 'JosefinSans',
                fontSize: 23.0,
                letterSpacing: 4.6,
                wordSpacing: 2.3,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: AnswerAny(),
        ),
      ),
    );

class AnswerAny extends StatefulWidget {
  @override
  _AnswerAnyState createState() => _AnswerAnyState();
}

class _AnswerAnyState extends State<AnswerAny> {
  int ansQues = 1;
  void showAnswer() {
    setState(() {
      ansQues = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 81, 196, 211),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              showAnswer();
            },
            child: Image.asset('images/ball$ansQues.png'),
          ),
        ],
      ),
    );
  }
}
