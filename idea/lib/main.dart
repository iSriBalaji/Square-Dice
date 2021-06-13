import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 18, 110, 130),
            title: const Text(
              'Idea! - Sri Balaji',
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
          body: const IdeaApp(),
        ),
      ),
    );

class IdeaApp extends StatefulWidget {
  const IdeaApp({Key? key}) : super(key: key);

  @override
  _IdeaAppState createState() => _IdeaAppState();
}

class _IdeaAppState extends State<IdeaApp> {
  int bulbState = 1;
  String stateOfIdea = 'ON';
  void showAnswer() {
    setState(() {
      if (bulbState == 1) {
        bulbState = 2;
        stateOfIdea = 'OFF';
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            'Bulb turned OFF!',
            style: TextStyle(
              color: Colors.white,
              // fontFamily: 'JosefinSans',
              fontSize: 23.0,
              letterSpacing: 4.6,
              wordSpacing: 2.3,
              fontWeight: FontWeight.bold,
            ),
          ),
          duration: Duration(seconds: 1),
        ));
      } else {
        bulbState = 1;
        stateOfIdea = 'ON';
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
            'Bulb turned ON!',
            style: TextStyle(
              color: Colors.white,
              // fontFamily: 'JosefinSans',
              fontSize: 23.0,
              letterSpacing: 4.6,
              wordSpacing: 2.3,
              fontWeight: FontWeight.bold,
            ),
          ),
          duration: Duration(seconds: 2),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 81, 196, 211),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            color: const Color.fromARGB(255, 231, 231, 222),
            child: Padding(
              padding: const EdgeInsets.all(23.0),
              child: Text(
                '$stateOfIdea',
                style: const TextStyle(
                  color: Color.fromARGB(255, 15, 48, 87),
                  // fontFamily: 'JosefinSans',
                  fontSize: 46,
                  letterSpacing: 2.3,
                  wordSpacing: 2.3,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              showAnswer();
            },
            child: Image.asset('images/b$bulbState.png'),
          ),
        ],
      ),
    );
  }
}
