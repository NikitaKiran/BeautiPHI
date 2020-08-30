import 'package:flutter/material.dart';
import './Appage.dart';
import './resources.dart';
import './SecondScreen.dart';

class space extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          'resource': (context) => resources(),
          'back': (context) => SecondScreen(),
        },
        home: Appage(
            'Phi in space',
            'Kepler\'s Triangle',
            'The dimensions of the Earth and Moon are in Phi relationship, forming a Triangle based on 1.618.This is called kepler\'s triangle.It is a right triangle with sides of length phi, root phi and one.',
            'space',
            'Spiral Galaxies',
            'Most spiral galaxies show the golden ratio in their shape.',
            'galaxy',
            ''));
  }
}
