import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text('BOX22'),
              color: Colors.teal,
              height: 75,
              width: 89,
              margin: EdgeInsets.only(left: 40),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text('BOX2'),
              color: Colors.red,
              height: 75,
              width: 75,
              margin: EdgeInsets.only(left: 40),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text('BOX3'),
              color: Colors.blue,
              height: 100,
              width: 100,
              margin: EdgeInsets.only(left: 40),
            ),
          ],
        )),
      ),
    );
  }
}
