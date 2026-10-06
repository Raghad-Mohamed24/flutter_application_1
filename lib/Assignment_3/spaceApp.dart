import 'package:flutter/material.dart';
import 'screen_zero.dart';
import 'screen_one.dart';
import 'screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Space App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0E0E0E),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ScreenZero(),
        '/screen_one': (context) => const ScreenOne(),
        '/screen_two': (context) => const ScreenTwo(),
      },
    );
  }
}