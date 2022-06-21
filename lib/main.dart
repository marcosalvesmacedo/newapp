import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:universal_platform/universal_platform.dart';

void main() {
  debugPaintSizeEnabled = true;
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
        body: const CreateMouseRegionWithInteraction(),
      ),
    );
  }
}

class CreateMouseRegionWithInteraction extends StatefulWidget {
  const CreateMouseRegionWithInteraction({Key? key}) : super(key: key);

  @override
  _MouseRegionState createState() => _MouseRegionState();
}

class _MouseRegionState extends State<CreateMouseRegionWithInteraction> {
  bool _isMouseOver = false;

  @override
  Widget build(BuildContext context) {
    TextDirection btnDirection =
        UniversalPlatform.isWindows ? TextDirection.rtl : TextDirection.ltr;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      onHover: (e) => print(e.localPosition),
      child: GestureDetector(
        onTap: () {
          Focus.of(context).requestFocus();
        },
        child: Container(
          height: 500,
          color: _isMouseOver ? Colors.blue : Colors.black,
          child: Column(
            children: [
              const Tooltip(
                message: 'I am a Tooltip',
                child: Text('Hover over the text to show a tooltip.'),
              ),
              const SelectableText('i am a selectable text'),
              const SelectableText.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hello',
                    ),
                    TextSpan(
                      text: 'Bold',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Spacer(),
                  Row(
                    textDirection: btnDirection,
                    children: [
                      TextButton(
                        onPressed: () => {},
                        child: const Text('OK'),
                      ),
                      TextButton(
                        onPressed: () => {},
                        child: const Text('Cancel'),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() => _isMouseOver = isHovered);
  }
}
