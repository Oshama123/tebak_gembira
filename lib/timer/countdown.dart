import 'package:flutter/material.dart';
import 'package:tebak_gembira/splash.dart';

class CountdownProgressBar extends StatefulWidget {
  final int countdownDuration; // Durasi countdown dalam detik

  CountdownProgressBar({required this.countdownDuration});

  @override
  _CountdownProgressBarState createState() => _CountdownProgressBarState();
}

class _CountdownProgressBarState extends State<CountdownProgressBar>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  bool _countdownFinished = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.countdownDuration),
    )..reverse(from: 1.0).whenComplete(() {
        setState(() {
          _countdownFinished = true;
        });
        _showCountdownDialog();
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _showCountdownDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Waktu Habis',
          ),
          content: Text('Yhaaa kamu kalah, coba lagi yaa dek'),
          alignment: Alignment.center,
          titleTextStyle: TextStyle(
            fontFamily: 'Montserrat Alternates',
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
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
                          builder: (context) => splash(),
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
                    'Menyerah',
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
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (BuildContext context, Widget? child) {
        if (_countdownFinished) {
          // Jika waktu countdown selesai
          return Container();
        } else {
          // Jika waktu countdown masih berjalan
          return LinearProgressIndicator(
            value: _animationController.value,
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
            minHeight: 10.0, // Tinggi progress bar diatur menjadi 20
          );
        }
      },
    );
  }
}
