import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final ratings = Container(
    padding: const EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star,
              color: Colors.green[500],
            ),
            Icon(
              Icons.star,
              color: Colors.green[500],
            ),
            Icon(
              Icons.star,
              color: Colors.green[500],
            ),
            const Icon(
              Icons.star,
              color: Colors.black,
            ),
            const Icon(
              Icons.star,
              color: Colors.black,
            )
          ],
        ),
        const Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'roboto',
            letterSpacing: 0.5,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );

  final iconList = DefaultTextStyle.merge(
    style: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    ),
    child: Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                Icons.kitchen,
                color: Colors.green[500],
              ),
              const Text('PREP:'),
              const Text('25 min')
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.timer,
                color: Colors.green[500],
              ),
              const Text('Cook:'),
              const Text('1 hr')
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.restaurant,
                color: Colors.green[500],
              ),
              const Text('FEEDS:'),
              const Text('4-6')
            ],
          ),
        ],
      ),
    ),
  );

  final titleText = const Padding(
    padding: EdgeInsets.all(20),
    child: Text(
      'Strawberry Pavlova',
      style: TextStyle(
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5,
        fontSize: 30,
      ),
    ),
  );

  final subTitle = const Text(
    'Pavlova is a meringue-based dessert named after the Russian ballerina '
    'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
    'topped with fruit and whipped cream.',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: 'Georgia',
      fontSize: 25,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
            height: 600,
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 440,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                      child: Column(
                        children: [
                          titleText,
                          subTitle,
                          ratings,
                          iconList,
                        ],
                      ),
                    ),
                  ),
                  Image.asset('images/pavlova.webp')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
