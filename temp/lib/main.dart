import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

// ignore: use_key_in_widget_constructors
class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: TextButton(
              onPressed: () {},
              child: const Card(
                child: Text('A'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
