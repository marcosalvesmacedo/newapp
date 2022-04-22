import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget _buildDecoratedImage(indexImage) => Expanded(
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 40, color: Colors.black38),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            margin: const EdgeInsets.all(4),
            child: Image.asset(
              'images/picture$indexImage.jpg',
              height: 200,
            )),
      );

  Widget _buildImageRow(int indexImage) => Row(
        children: [
          _buildDecoratedImage(indexImage),
          _buildDecoratedImage(indexImage + 1),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black26,
            ),
            child: Column(
              children: [
                _buildImageRow(1),
                _buildImageRow(3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
