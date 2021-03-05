part of 'pages.dart';

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
