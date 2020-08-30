import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class resources extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PhotoView.customChild(
      child: Scaffold(
        backgroundColor: Color(0xff1d1e33),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.keyboard_backspace,
                      color: Color(0xffeb1555),
                      size: 29,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'Image Sources',
                    style: TextStyle(
                        fontFamily: 'Pac',
                        color: Color(0xffeb1555),
                        fontSize: 30),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''https://www.cnet.com/pictures/natures-patterns-golden-spirals-and-branching-fractals/

https://goldenratiomyth.weebly.com/phyllotaxis-the-fibonacci-sequence-in-nature.html

https://www.phi-lighting.com/about-us/phi-in-nature/

https://www.lifecoachcode.com/2018/09/26/divine-ratio-is-found-everywhere-nature/

https://www.goldennumber.net/

https://edu.glogster.com/glog/golden-ratio-in-the-human-body/1wtj52n00hq?=glogpedia-source

https://in.pinterest.com/pin/264727284316974147/

http://blog.dubspot.com/fibonacci-sequence-in-music/

https://www.artsy.net/artwork/salvador-dali-the-sacrament-of-the-last-supper

https://en.wikipedia.org/wiki/Bathers_at_Asni%C3%A8res

 ''',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Bal', fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
