import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(const MyAppNonMaterial());
}

class MyAppNonMaterial extends StatelessWidget {
  const MyAppNonMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Image.asset(
            'images/picture1.jpg',
          ),
        ),
        Expanded(
          flex: 2,
          child: Image.asset(
            'images/picture2.jpg',
          ),
        ),
        Expanded(
          child: Image.asset(
            'images/picture3.jpg',
          ),
        )
      ],
    );
  }
}
