import './Design.dart';
import 'package:flutter/material.dart';
import './music.dart';
import './humanbody.dart';
import './Art.dart';
import './Space.dart';
import './Nature.dart';

class SecondScreen extends StatefulWidget {
  @override
  SecondScreenState createState() {
    return SecondScreenState();
  }
}

class SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'music': (context) => Music(),
        'human': (context) => human(),
        'art': (context) => art(),
        'design': (context) => design(),
        'space': (context) => space(),
        'nature': (context) => nature(),
      },
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff1d1e33),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Center(
                    child: Text('Select a phield',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Pac',
                          fontSize: 40.0,
                        )),
                  ),
                ),
                _Button("Human Body", 'human'),
                _Button("Nature", 'nature'),
                _Button("Design", 'design'),
                _Button("Space", 'space'),
                _Button("Music", 'music'),
                _Button("Art", 'art'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  _Button(this.texts, this.route);

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
        height: 50,
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
