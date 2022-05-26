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
        body: Column(
          children: [
            FocusTraversalGroup(
              child: Column(
                children: const [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Field 1',
                        hintText: '1'),
                  ),
                ],
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Field 2',
                  hintText: '2'),
            ),
          ],
        ),
      ),
    );
  }
}
