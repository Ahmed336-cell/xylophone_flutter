import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int num){
    final player =AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  MaterialButton keySound(Color c , int num){
    return  MaterialButton(
      onPressed: (){
        playSound(num);
      },
      color: c,

    );
  }
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                keySound(Colors.red, 1),
                keySound(Colors.orange, 2),
                keySound(Colors.blue, 3),
                keySound(Colors.yellow, 4),
                keySound(Colors.purple, 5),
                keySound(Colors.green, 6),
                keySound(Colors.grey, 7)
              ],
            ),
          )
      ),
    );
  }
}


