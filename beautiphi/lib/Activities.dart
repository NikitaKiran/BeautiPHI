import 'package:flutter/material.dart';
import './FirstScreen.dart';
import './sphiral.dart';
import './survey.dart';
import './Trick.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'int': (context) => FirstScreen(),
        'sphiral': (context) => sphiral(),
        'survey': (context) => survey(),
        'trick': (context) => Trick(),
      },
      home: Scaffold(
        backgroundColor: Color(0xff1d1e33),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Button1('Phi in A Pentagon','int'),
              Button1('The Golden Sphiral', 'sphiral'),
              Button1('Magic Trick','trick'),
              Button1('Survey', 'survey'),
            ],
          ),
        ),
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  Button1(this.texts, this.route);

  String texts;
  String route;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
        padding: EdgeInsets.only(left: 10),
        height: 90,
        width: 100,
        child: Center(
          child: Text('$texts',
              style: TextStyle(
                fontFamily: 'Pac',
                fontSize: 30.0,
                color: Color(0xff1d1e33),
              )),
        ),
      ),
    );
  }
}
