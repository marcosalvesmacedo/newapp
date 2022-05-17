import 'package:flutter/gestures.dart';
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
        body: Listener(
          onPointerSignal: (event) {
            if (event is PointerScrollEvent) {
              print(event.scrollDelta.dy);
            }
          },
          child: ListView(),
        ),
      ),
    );
  }
}
