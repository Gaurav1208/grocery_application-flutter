import 'package:flutter/material.dart';
import 'package:grocery_application/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF59C16),
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}
