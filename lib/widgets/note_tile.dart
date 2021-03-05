part of 'widgets.dart';

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
