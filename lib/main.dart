import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(XylophoneApp()));
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded keyCl(Color c, int num) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: c,
        ),
        onPressed: () {
          playSound(num);
        },
        child: Text(''),
      ),
    );
  }

  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            keyCl(Colors.blue.shade100, 1),
            keyCl(Colors.blue.shade200, 2),
            keyCl(Colors.blue.shade300, 3),
            keyCl(Colors.blue.shade400, 4),
            keyCl(Colors.blue.shade500, 5),
            keyCl(Colors.blue.shade700, 6),
            keyCl(Colors.blue.shade900, 7),
          ],
        ),
      ),
    ));
  }
}
