import 'package:flutter/material.dart';
import 'package:tebak_gembira/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tebak Gembira',
      home: splash(),
    );
  }
}
