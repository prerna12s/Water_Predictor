import 'package:flutter/material.dart';
import 'package:water_level_01/authentication/signUpScreen.dart';
import 'package:water_level_01/screens/splash_screen.dart';

import 'authentication/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: splashScreen(),
    );
  }
}
