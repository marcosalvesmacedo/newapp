import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class CreateNewItemIntent extends Intent {
  const CreateNewItemIntent();
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
        body: MouseRegion(
          cursor: SystemMouseCursors.forbidden,
          child: GestureDetector(
            onTap: () {
              Focus.of(context).requestFocus();
            },
            child: Container(),
          ),
        ),
      ),
    );
  }
}
