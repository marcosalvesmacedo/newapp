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
    Widget foo = LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
      bool useVerticalLayout = constraint.maxWidth < 600.0;
      return Flex(
        children: const [
          Text('Foo'),
          Text('Bar'),
          Text('Bar'),
        ],
        direction: useVerticalLayout ? Axis.vertical : Axis.horizontal,
      );
    });

    return MaterialApp(
      title: 'Adaptive and Responsive layout',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Adaptive and Responsive layout'),
        ),
        body: foo,
      ),
    );
  }
}
