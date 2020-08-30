import 'package:flutter/material.dart';
import './Appage.dart';
import './resources.dart';
import './SecondScreen.dart';

class design extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'resource': (context) => resources(),
        'back': (context) => SecondScreen(),
      },
      home: Appage(
          'Phi in Design',
          'Automobile Design',
          'Aston Martin features phi in many of its automobiles to enhance its aesthetic appeal....the most noted one being the DB5 driven by James Bond in GoldFinger. Some of its applications are in the ratio of the wheel diameter to the distance from the wheel to the front bumper and the height of the car to the diameter of the tyre.',
          'car',
          'Pyramids of Giza',
          'The Great Pyramid of Giza is constructed to reflect the golden ratio and it forms a Kepler Triangle( a right triangle with sides of length phi, root phi and one).',
          'giza',
          ''),
    );
  }
}
