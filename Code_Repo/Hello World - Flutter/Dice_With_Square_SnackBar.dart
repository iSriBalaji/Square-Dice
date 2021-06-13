import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 136, 145),
        appBar: AppBar(
          title: Text('Square - Sri Balaji',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'JosefinSans',
                fontSize: 23.0,
                letterSpacing: 4.6,
                wordSpacing: 2.3,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Color.fromARGB(255, 52, 98, 108),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 2;
  int rightDice = 2;
  int sum = 4;
  void doRoll() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
      sum = leftDice + rightDice;
      if (leftDice == rightDice) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            'You got a Square of $leftDice!',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'JosefinSans',
              fontSize: 23.0,
              letterSpacing: 4.6,
              wordSpacing: 2.3,
              fontWeight: FontWeight.bold,
            ),
          ),
          duration: const Duration(seconds: 2),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisSize: MainAxisSize.max,
      verticalDirection: VerticalDirection.down,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          color: Color.fromARGB(255, 231, 231, 222),
          child: Padding(
            padding: const EdgeInsets.all(23.0),
            child: Text(
              '$leftDice + $rightDice = $sum',
              style: TextStyle(
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
        SizedBox(
          height: 46.0,
        ),
        Center(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    doRoll();
                  },
                  child: Image.asset('images/dice$leftDice.png'),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    doRoll();
                  },
                  child: Image.asset('images/dice$rightDice.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
