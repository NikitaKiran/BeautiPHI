import 'package:flutter/material.dart';
import './Appage.dart';
import './resources.dart';
import './SecondScreen.dart';

class nature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          'resource': (context) => resources(),
          'back': (context) => SecondScreen(),
        },
        home: Appage(
            'Phi in nature',
            'Seed Arrangement in Sunflowers',
            'Plants can grow new cells in spirals, such as the pattern of seeds in a sunflower. To get an ideal design without many gaps in between, the angle between consecutive seeds is indeed the golden angle(137.508 degrees). ',
            'sunflower',
            'Pinecones and Pineapples',
            'Pinecones and pineapples illustrate spirals of successive Fibonacci numbers, i.e the number of spirals in clockwise and anti-clockwise directions are successive fibonacci numbers.',
            'cone',
            'pineapple'));
  }
}
