import 'package:flutter/material.dart';
import './Appage.dart';
import './resources.dart';
import './SecondScreen.dart';

class art extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          'resource': (context) => resources(),
          'back': (context) => SecondScreen(),
        },
        home: Appage(
            'Phi in Art',
            'Size of paintings',
            'Salvador Dalí,  explicitly used the golden ratio in his masterpiece, The Sacrament of the Last Supper. The dimensions of the canvas are a golden rectangle. ',
            'art1',
            'Composition of paintings',
            'Impressionist painter Georges Seurat  attacked every canvas with the golden ratio. For the creation of his painting Bathers at Asnières, the compositional lines suggest a conscious decision to use the golden ratio as well as the rule of thirds. The painter was also known to use the golden ratio not only for the base of his compositions, but also in the depiction of figures in different scenes, where the golden ratio or the rule of thirds marked where the most important elements in the paintings should be placed. His interest didn’t stop just here since the painter was also known to have painted about one-quarter of his work on golden rectangle panels.',
            'art2',
            ''));
  }
}
