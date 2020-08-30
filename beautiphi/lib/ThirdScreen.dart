import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  Color dotcolor1 = Color(0xffeb1555);
  Color dotcolor2 = Colors.white;
  Color dotcolor3 = Color(0xffc6f2b0);
  Color boxcolor = Color(0xff111328);

  var colour1 = [
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff)
  ];

  var colour2 = [
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff)
  ];
  var colour3 = [
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff),
    Color(0x00ffffff)
  ];
  var list = List(9);
  int Total = 0;
  var text1 = '';
  var text1lhs = '';
  var text1rhs = '';
  var text2 = '';
  var sum1 = 0;
  var sum2 = 0;
  var sumstr1 = '';
  var sumstr2 = '';
  var totstr1 = '';
  var totstr2 = '';

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 9; i++) {
      list[i] = Expanded(
        child: GestureDetector(
          child: Boxes(boxcolor, 2 + i, colour1[i], colour2[i], colour3[i]),
          onTap: () {
            if (i != 0 && i != 8) {
              if (colour2[i] == Color(0x00ffffff)) {
                setState(() {
                  colour2[i] = dotcolor2;
                  Total += fib(i + 7);
                });
              } else {
                setState(() {
                  colour2[i] = Color(0x00ffffff);
                  Total -= fib(i + 7);
                });
              }
            }
          },
        ),
      );
    }
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              child: Text('Phi-The Golden Ratio',
                  style: TextStyle(
                      fontSize: 35.0, color: Colors.white, fontFamily: 'Pac')),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'What is phi? Why is it called the \'The Golden Ratio\'? Before we understand that, let\'s try out an amazing trick based on phi.',
                  style: TextStyle(
                      fontSize: 18.0, color: Colors.white, fontFamily: 'Bal')),
            ),
          ),
          Center(
            child: Container(
              child: Text('The "KM" to "Mile" Converter',
                  style: TextStyle(
                      color: Color(0xffeb1555),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Bal')),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Click one or more boxes (except the extreme ones) & press the pink or green button. Notice how easily the conversion occurs by shifting the dots by one box to the left or to the right!',
                  style: TextStyle(
                      fontSize: 18.0, color: Colors.white, fontFamily: 'Bal')),
            ),
          ),
          Row(
            children: [
              list[0],
              list[1],
              list[2],
              list[3],
              list[4],
              list[5],
              list[6],
              list[7],
              list[8],
            ],
          ),
          RaisedButton(
            child: Text('Reset'),
            onPressed: () {
              setState(() {
                colour1 = [
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff)
                ];
                colour2 = [
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff)
                ];
                colour3 = [
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff),
                  Color(0x00ffffff)
                ];
                Total = 0;
                text1 = '';
                text1lhs = '';
                text1rhs = '';
                text2 = '';
                sum1 = 0;
                sum2 = 0;
                sumstr1 = '';
                sumstr2 = '';
                totstr1 = '';
                totstr2 = '';
              });
            },
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 8, bottom: 8),
              child: Text('Total= $Total',
                  style: TextStyle(
                      color: dotcolor2,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          RaisedButton(
            color: dotcolor1,
            child: Text('km to mile', style: TextStyle(color: Colors.white)),
            onPressed: () {
              setState(() {
                sumstr1 = '';
                totstr1 = '';
                sum1 = 0;
                var last = 0;
                for (var i = 8; i > -1; i--) {
                  if (colour2[i] == dotcolor2) {
                    last = i;
                    break;
                  }
                }
                for (var i = 1; i < 8; i++) {
                  if (colour2[i] == dotcolor2) {
                    colour1[i - 1] = dotcolor1;
                    sum1 += fib(6 + i);
                    var fibr = fib(6 + i);
                    var fibc = fib(7 + i);
                    var symbol = '+';
                    if (i == last) {
                      symbol = '';
                    }
                    sumstr1 += '$fibr $symbol ';
                    totstr1 += '$fibc $symbol ';
                  } else {
                    colour1[i - 1] = Color(0x00ffffff);
                  }
                }
                if (sumstr1 == '') {
                  text1 = '0 km = 0 miles';
                } else {
                  text1 = '''($totstr1) km = ($sumstr1) miles = $sum1 miles (approximately)''';
                }
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text1,
                style: TextStyle(
                    color: dotcolor1, fontSize: 16.0, fontFamily: 'Bal')),
          ),
          RaisedButton(
            color: dotcolor3,
            child: Text(
              ' mile to km',
              style: TextStyle(color: Colors.black, fontFamily: 'Bal'),
            ),
            onPressed: () {
              setState(() {
                totstr2 = '';
                sumstr2 = '';
                sum2 = 0;
                var last = 0;
                for (var i = 8; i > -1; i--) {
                  if (colour2[i] == dotcolor2) {
                    last = i;
                    break;
                  }
                }
                for (var i = 1; i < 8; i++) {
                  if (colour2[i] == dotcolor2) {
                    colour3[i + 1] = dotcolor3;
                    sum2 += fib(8 + i);
                    var fibr = fib(8 + i);
                    var fibc = fib(7 + i);

                    var symbol = '+';
                    if (i == last) {
                      symbol = '';
                    }
                    sumstr2 += '$fibr $symbol ';
                    totstr2 += '$fibc $symbol ';
                  } else {
                    colour3[i + 1] = Color(0x00ffffff);
                  }
                }
                if (sumstr2 == '') {
                  text2 = '0 miles = 0 km';
                } else {
                  text2 = '''($totstr2) miles = ($sumstr2) km = $sum2 km (approximately)''';
                }
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text2,
                style: TextStyle(
                    color: dotcolor3, fontSize: 16.0, fontFamily: 'Bal')),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(
                '''Wasn\’t that amazing? Do you recognize the numbers used at the bottom of the boxes? Do they look like Fibonacci numbers? Why does this trick work? While you ponder on this, let us discover what phi actually is. 

PHI is just a number like any other. Like numerous other irrational numbers, phi has a nonending and non – recurring decimal expansion with an approximate value of 1.6180339 . Doesn’t seem anything special till now. However, the ratio of 1 to phi (1 : 1.61803) has a lot of special properties, occurrences and significance which we will see as we go through the app. You will realize that it is no wonder that the ratio is called the “Golden Ratio”. In mathematics, two quantities are in the golden ratio if their ratio is the same as the ratio of their sum to the larger of the two quantities.Given this definition, it is now easy to figure out what the golden rectangle and golden angle actually represent.''',
                style: TextStyle(
                    color: Colors.white, fontSize: 19.0, fontFamily: 'Bal')),
          ),
          Padding(
            padding: EdgeInsets.all(11),
            child: Image.asset('images/goldenratio.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text('''
In addition, the ratio of successive Fibonacci numbers (also known as Hemachandra numbers) tends to phi. Haven't heard of fibonacci numbers ? They are just a sequence of numbers where each number is the sum of the previous two in the series (0,1,1,2,3,5,8,13,21......). 

Going back to the KM to Mile Conversion trick, it should be apparent now as to why the trick works. The ratio of successive Fibonacci numbers tends to 1.618... which is also very close to the conversion factor from KM to Miles. 

Do you know that any number can be represented as a sum of distinct Fibonacci numbers? So, the trick will work for any number. Try it out and have fun.
 ''',
                style: TextStyle(
                    color: Colors.white, fontSize: 19.0, fontFamily: 'Bal')),
          ),
          Center(
            child: Text(
              'Poem on Phi :',
              style: TextStyle(
                  color: Color(0xffeb1555), fontSize: 27, fontFamily: 'Pac'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text('''
Phee phum pho phi,
I’m irrational just like pi,
They call me the divine proportion,
And have many a wrong notion.
They see me everywhere,
And use me as proof with a flair.
I’m valued 1.618033,
I manage the branching in many a tree.
Here I’m a special guy, dividing the poem in Phi
Check it out, why don’t you try?
If you see me in the nautilus shell,
To your brothers and sisters do tell.
In the end I’m just a number,
Leave me now and let me slumber. 
 ''', style: TextStyle(color: Colors.white, fontSize: 19.0, fontFamily: 'Bal')),
          ),
        ],
      ),
    );
  }
}

class Boxes extends StatelessWidget {
  Color colour;
  int Boxno;
  var colour1;
  var colour2;
  var colour3;

  Boxes(this.colour, this.Boxno, this.colour1, this.colour2, this.colour3);

  @override
  Widget build(BuildContext context) {
    int fibo = fib(Boxno + 5);
    double widths = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: widths / 9.5,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            color: colour,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Icon(Icons.brightness_1, size: 25, color: colour1),
              Icon(
                Icons.brightness_1,
                size: 25,
                color: colour2,
              ),
              Icon(Icons.brightness_1, size: 25, color: colour3),
            ],
          ),
        ),
        Container(
            child: Text(
          '$fibo',
          style: TextStyle(color: Colors.white, fontFamily: 'Lib'),
        ))
      ],
    );
  }
}

fib(int n) {
  if (n == 1 || n == 2) {
    return 1;
  }
  return (fib(n - 1) + fib(n - 2));
}
