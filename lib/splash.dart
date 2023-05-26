import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tebak_gembira/level1/game1/stage1.dart';

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 15),
          Container(
            child: Image.asset('assets/logo/logo-game.png'),
            width: 390,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 360),
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => game1(),
                    ));
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: double.infinity,
                height: 49,
                decoration: BoxDecoration(
                  color: Color(0xffd41c1c),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'START',
                    style: TextStyle(
                      fontFamily: 'Montserrat Alternates',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      height: 1.2175,
                      color: Color(0xfff9e327),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
