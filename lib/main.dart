import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playAudio(int note){
    final player= AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({Color color, int AudioNum}){
    return Expanded(
                  child: FlatButton(
                    color: color,
                    onPressed: ()=>playAudio(AudioNum)
                  ),
                );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                  buildKey(color: Colors.red,AudioNum:1),
                  buildKey(color: Colors.orange,AudioNum:2),
                  buildKey(color: Colors.yellow,AudioNum:3),
                  buildKey(color: Colors.green,AudioNum:4),
                  buildKey(color: Colors.blue,AudioNum:5),
                  buildKey(color: Colors.indigo,AudioNum:6),
                  buildKey(color: Colors.purple,AudioNum:7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
