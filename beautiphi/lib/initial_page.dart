import 'package:flutter/material.dart';

void main() => runApp(initialpage());

class initialpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'home');
        },
        child: Scaffold(
          backgroundColor: Colors.black38,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/iconlogo.png'),
                    Text(
                      'Beautiphi',
                      style: TextStyle(
                        fontFamily: 'Dr Sugiyama',
                        fontSize: 60.0,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Click anywhere to continue',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white70,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
