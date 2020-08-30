import './initial_page.dart';
import 'package:flutter/material.dart';
import './HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'initial',
      routes: {
        'initial': (context) => initialpage(),
        'home': (context) => HomeScreen(),
      },
    );
  }
}
