import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Appage extends StatelessWidget {
  Appage(this.mHeading, this.Heading1, this.Text1, this.Image1, this.Heading2,
      this.Text2, this.Image2, this.Image3);
  String mHeading;
  String Heading1;
  String Heading2;
  String Text1;
  String Text2;
  String Image1;
  String Image2;
  String Image3;

  @override
  Widget build(BuildContext context) {
    return PhotoView.customChild(
        child: Scaffold(
            backgroundColor: Color(0xff1d1e33),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.keyboard_backspace,
                            color: Color(0xffeb1555),
                            size: 29,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'back');
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Color(0xffeb1555),
                            size: 39,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'resource');
                          },
                        ),
                      ]),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        child: Text(
                          mHeading,
                          style: TextStyle(
                              fontFamily: 'Pac',
                              fontSize: 35.0,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Center(
                      child: Text(
                        Heading1,
                        style: TextStyle(
                          fontFamily: 'Bal',
                          fontSize: 28.0,
                          color: Color(0xffeb1555),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 3, 10, 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        Text1,
                        style: TextStyle(
                            fontFamily: 'Bal',
                            fontSize: 18.0,
                            color: Color(0xff1d1e33)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Center(child: Image.asset('images/$Image1.png')),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Center(
                      child: Text(
                        Heading2,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'Bal',
                          fontWeight: FontWeight.bold,
                          color: Color(0xffeb1555),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 3, 10, 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        Text2,
                        style: TextStyle(
                            fontFamily: "Bal",
                            fontSize: 18.0,
                            color: Color(0xff1d1e33)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Imageii(Image2),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Imageii(Image3),
                  ),
                  SizedBox(
                    height: 60,
                  )
                ],
              ),
            )));
  }
}

class Imageii extends StatelessWidget {
  Imageii(this.Imagename);
  String Imagename;

  @override
  Widget build(BuildContext context) {
    if (Imagename == '') {
      return Container();
    } else {
      return Container(
        child: Center(
          child: Image.asset(
            'images/$Imagename.png',
          ),
        ),
      );
    }
  }
}
