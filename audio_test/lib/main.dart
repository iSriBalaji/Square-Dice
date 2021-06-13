import 'package:flutter/material.dart';


void main() => runApp(XylophoneApp());


class XylophoneApp extends StatefulWidget {

  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  AudioPlayer player = AudioPlayer();
  AudioCache audioCache;
  audioCache = AudioCache(fixedPlayer: audioCache);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: TextButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note1.wav');
              },
              child: Card(
                child: Text('A'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
