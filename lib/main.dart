import 'package:flutter/material.dart';
import 'ViewPage.dart';

void main() {
  runApp(const Tguide());
}

class Tguide extends StatelessWidget {
  const Tguide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ViewPage(),
    );
  }
}