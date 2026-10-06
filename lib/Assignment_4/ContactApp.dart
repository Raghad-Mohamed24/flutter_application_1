import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'HomeScreen.dart';

void main() {
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Route Contact App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF29384D),
        fontFamily: 'Inter',
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}