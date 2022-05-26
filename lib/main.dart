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
        body: const BasicActionDetector(),
      ),
    );
  }
}

class BasicActionDetector extends StatefulWidget {
  const BasicActionDetector({Key? key}) : super(key: key);

  @override
  _BasicActionDetectorState createState() => _BasicActionDetectorState();
}

class _BasicActionDetectorState extends State<BasicActionDetector> {
  bool _hasFocus = false;

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      onFocusChange: (value) => setState(() => _hasFocus = value),
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<Intent>(
          onInvoke: (Intent intent) {
            print("Enter or Space as pressed!");
            return null;
          },
        ),
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const FlutterLogo(size: 100),
          if (_hasFocus)
            Positioned(
              left: 100,
              top: 100,
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 5.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: const Text('Ola Flutter'),
              ),
            ),
        ],
      ),
    );
  }
}
