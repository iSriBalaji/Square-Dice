import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

// ignore: use_key_in_widget_constructors
class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  late AudioCache _audioCache;

  @override
  void initState() {
    super.initState();
    // create this only once
    _audioCache = AudioCache(
        prefix: "audio/",
        fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  void playNote(int noteNumber) {
    _audioCache.play('note$noteNumber.wav');
  }

  // ignore: non_constant_identifier_names
  Expanded setWidget({required Color colorPad, required int numNote}) {
    return Expanded(
      child: InkWell(
        enableFeedback: false,
        onTap: () {
          playNote(numNote);
        },
        child: Card(
          margin: const EdgeInsets.all(1.5),
          color: colorPad,
          child: const SizedBox(
            height: double.infinity,
            width: double.infinity,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black45,
        body: SafeArea(
          // ignore: avoid_unnecessary_containers
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              setWidget(colorPad: Colors.purple.shade400, numNote: 1),
              setWidget(colorPad: Colors.indigo, numNote: 2),
              setWidget(colorPad: Colors.blueAccent, numNote: 3),
              setWidget(colorPad: Colors.teal, numNote: 4),
              setWidget(colorPad: Colors.green, numNote: 5),
              setWidget(colorPad: Colors.lightGreen.shade500, numNote: 6),
              setWidget(colorPad: Colors.green.shade300, numNote: 7),
            ],
          ),
        ),
      ),
    );
  }
}
