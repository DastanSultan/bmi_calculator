import 'package:bmi_calculator/home.dart';
import 'package:flutter/material.dart';
// Language: Dart

void main() => runApp(myDev());

class myDev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myApp(),
    );
  }
}
