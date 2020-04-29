import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

   void play(int number){
        final  player = AudioCache();
        player.play('note$number.wav');
   }

Expanded buildKey({Color color, int number}){
    return  Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
            play(number);
       },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                buildKey(color: Colors.redAccent, number: 1),
                buildKey(color: Colors.orangeAccent, number: 2),
                buildKey(color: Colors.yellowAccent, number: 3),
                buildKey(color: Colors.greenAccent, number: 4),
                buildKey(color: Colors.blueAccent, number: 5),
                buildKey(color: Colors.pinkAccent, number: 6),
                buildKey(color: Colors.tealAccent, number: 7),


              ],
            ),
          ),
      ),
    );
  }
}
