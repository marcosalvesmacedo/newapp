import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adaptive and Responsive layout',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Adaptive and Responsive layout'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(Insets.small),
          child: Text(
            'Hello!',
            style: TextStyles.h2,
          ),
        ),
      ),
    );
  }
}

class Insets {
  static const double xsmall = 3;
  static const double small = 4;
  static const double medium = 5;
  static const double large = 10;
  static const double extralarge = 20;
}

class Fonts {
  static const String raleway = 'Raleway';
}

class TextStyles {
  static const TextStyle raleway = TextStyle(
    fontFamily: Fonts.raleway,
  );
  static const TextStyle buttonText1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  static const TextStyle buttonText2 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 11,
  );
  static const TextStyle h1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
  );
  static const TextStyle h2 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  static TextStyle body1 = raleway.copyWith(
    color: const Color(0xFF42A5F5),
  );
}
