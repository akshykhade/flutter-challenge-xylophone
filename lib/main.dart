import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget buildKey(Color color, int note) {
    final player = AudioPlayer();
    return Expanded(
      child: MaterialButton(
        onPressed: () async {
          await player.play(AssetSource('note$note.wav'));
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.purple, 3),
              buildKey(Colors.blue, 4),
              buildKey(Colors.yellow, 5),
              buildKey(Colors.green, 6),
              buildKey(Colors.lightBlue, 7),
            ],
          ),
        ),
      ),
    );
  }
}
