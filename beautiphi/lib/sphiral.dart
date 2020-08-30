import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:photo_view/photo_view.dart';

import 'dart:async' show Future, Timer;
import 'package:flutter/services.dart' show rootBundle;

class sphiral extends StatefulWidget {
  @override
  _sphiralState createState() => _sphiralState();
}

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/sphiral.html');
}

class _sphiralState extends State<sphiral> {
  @override
  Widget build(BuildContext context) {
    String _html;
    Timer.run(() async {
      String result = await loadAsset();
      setState(() {
        _html = result;
      });
    });

    return PhotoView.customChild(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xffc6f2b0),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(children: [
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
                  Container(
                    child: Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'The Golden sPHIral',
                          style: TextStyle(
                            fontSize: 27.0,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ),
                  ),
                ]),
                Container(
                  child: WebView(
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (WebViewController controller) {
                      controller.loadUrl(Uri.dataFromString(_html,
                              mimeType: 'text/html',
                              encoding: Encoding.getByName('utf-8'))
                          .toString());
                    },
                  ),
                  height: 900,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
