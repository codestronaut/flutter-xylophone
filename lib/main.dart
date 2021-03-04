import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone Flutter',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: XylophonePage(),
    );
  }
}

class XylophonePage extends StatefulWidget {
  XylophonePage({Key key}) : super(key: key);

  @override
  _XylophonePageState createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  void playNote(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Xylophone'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Note 1 - Note 4
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NoteTile(
                    noteText: '1',
                    playSound: () {
                      playNote(1);
                    },
                  ),
                  NoteTile(
                    noteText: '2',
                    playSound: () {
                      playNote(2);
                    },
                  ),
                  NoteTile(
                    noteText: '3',
                    playSound: () {
                      playNote(3);
                    },
                  ),
                  NoteTile(
                    noteText: '4',
                    playSound: () {
                      playNote(4);
                    },
                  ),
                ],
              ),
            ),
            // Note 5 - Note 7
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NoteTile(
                    noteText: '5',
                    playSound: () {
                      playNote(5);
                    },
                  ),
                  NoteTile(
                    noteText: '6',
                    playSound: () {
                      playNote(6);
                    },
                  ),
                  NoteTile(
                    noteText: '7',
                    playSound: () {
                      playNote(7);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NoteTile extends StatelessWidget {
  final String noteText;
  final Function playSound;
  const NoteTile({
    this.noteText,
    this.playSound,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(64.0, 200.0),
        elevation: 0,
        primary: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      onPressed: playSound,
      child: Text(noteText),
    );
  }
}
