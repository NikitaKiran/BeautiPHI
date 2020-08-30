import 'package:flutter/material.dart';
import './Appage.dart';
import './resources.dart';
import './SecondScreen.dart';

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          'resource': (context) => resources(),
          'back': (context) => SecondScreen(),
        },
        home: Appage(
            ' Phi in Music',
            'Violin',
            'Antonio Stradivari has made some of the most beautiful and sonorous violins in existence. Their exquisite tonal quality and aesthetic form are attributed to their design (exterior shape) that is based on the golden ratio. ',
            'violin',
            'Songs',
            'Take your favorite song and find out how many seconds it has. Then, multiply that by .618. Now, head to that point in the song and see what you find. The vast majority of the songs are either at a high point in the song or just reaching it!',
            '',
            ''));
  }
}
