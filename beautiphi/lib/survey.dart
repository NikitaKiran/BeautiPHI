import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:photo_view/photo_view.dart';

import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class survey extends StatefulWidget {
  @override
  _surveyState createState() => _surveyState();
}

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/survey.html');
}

class _surveyState extends State<survey> {
  @override
  Widget build(BuildContext context) {
    return PhotoView.customChild(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xffc6f2b0),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_backspace,
                        size: 30,
                        color: Color(0xffeb1555),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Container(
                  child: WebView(
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (WebViewController controller) {
                      controller.loadUrl(
                          "file:///android_asset/flutter_assets/assets/survey.html");
                    },
                  ),
                  height: 1300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
