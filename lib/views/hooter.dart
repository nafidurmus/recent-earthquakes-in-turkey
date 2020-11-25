import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class HooterPage extends StatefulWidget {
  @override
  _HooterPageState createState() => _HooterPageState();
}

class _HooterPageState extends State<HooterPage> {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('düdük'),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Expanded(
              child: Image(
                image: AssetImage('assets/images/duduk.jpg'),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildInkWellCard('Düdük', Colors.blue, 'duduk-2'),
                  buildInkWellCard(
                      'Garavel Usta Burdayım', Colors.red, 'burdayim'),
                  buildInkWellCard('Tren Sesi', Colors.orange, 'tren-duduk'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell buildInkWellCard(String name, Color color, String sound) {
    return InkWell(
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: TextStyle(
                color: Colors.black87,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onTap: () => player.play('sounds/$sound.mp3'),
    );
  }
}
