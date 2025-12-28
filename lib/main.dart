import 'package:flutter/material.dart';
import 'intro/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        home: const IntroScreen(),
      darkTheme: ThemeData(scaffoldBackgroundColor: Colors.black,),
    );
  }
}