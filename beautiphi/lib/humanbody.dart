import 'package:flutter/material.dart';
import './Appage.dart';
import './resources.dart';
import './SecondScreen.dart';

class human extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'resource': (context) => resources(),
        'back': (context) => SecondScreen(),
      },
      home: Appage(
          'Phi in the Human Body',
          'DNA',
          'The DNA molecule, the program for all life, is based on the golden section.  It measures 34 angstroms long by 21 angstroms wide for each full cycle of its double helix spiral.DNA in the cell appears as a double-stranded helix referred to as B-DNA.This form of DNA has a two groove in its spirals, with a ratio of phi in the proportion of the major groove to the minor groove, or roughly 21 angstroms to 13 angstroms.',
          'dna',
          'Fingers',
          'Each section of your index finger, from the tip to the base of the wrist, is larger than the preceding one by about the Fibonacci ratio of 1.618, also fitting the Fibonacci numbers 2, 3, 5 and 8.',
          'finger',
          ''),
    );
  }
}
