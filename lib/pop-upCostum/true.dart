import 'package:flutter/material.dart';
import 'package:tebak_gembira/level1/game2/stage2.dart';

class rightAnswer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Jawaban Kamu Benar'),
      titleTextStyle: TextStyle(
        fontFamily: 'Montserrat Alternates',
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      content: Text('Yey kamu benar, ke stage berikutnya'),
      contentTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => game2(),
                    ));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 212, 28, 28)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: Text(
                'Lanjut',
                style: TextStyle(
                  fontFamily: 'Montserrat Alternates',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
