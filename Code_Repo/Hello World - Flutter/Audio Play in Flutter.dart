import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

//audio_test_final
//use audioplayer 0.10.0    audioplayers: ^0.10.0
//place the  audio files in assets/audio/ here    - assets/audio/note1.wav

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          // ignore: avoid_unnecessary_containers
          child: Center(
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 75.0,
              width: 75.0,
              child: FloatingActionButton(
                onPressed: () {
                  _audioCache.play('note1.wav');
                },
                child: const Icon(
                  Icons.music_note,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
