import 'package:beautiphi/Activities.dart';
import 'package:flutter/material.dart';
import './SecondScreen.dart';
import './ThirdScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffeb1555),
        scaffoldBackgroundColor: Color(0xff1d1e33),
      ),
      home: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xffeb1555),
              elevation: 0,
              bottom: TabBar(
                  labelColor: Color(0xffeb1555),
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: Colors.white),
                  tabs: [
                    Tab(
                        child: Align(
                            alignment: Alignment.center,
                            child: Text("Home",
                                style:
                                    TextStyle(fontWeight: FontWeight.bold)))),
                    Tab(
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Examples",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ))),
                    Tab(
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Explore",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ))),
                  ]),
            ),
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                ThirdScreen(),
                SecondScreen(),
                Activities(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
