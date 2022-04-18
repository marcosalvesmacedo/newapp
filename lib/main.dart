import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyAppNonMaterial());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout demonstration',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter layout demonstration'),
          ),
          body: const Center(
            child: Text('Hello World!'),
          ),
        ));
  }
}

class MyAppNonMaterial extends StatelessWidget {
  const MyAppNonMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(
        child: Text(
          'Hello World!',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
