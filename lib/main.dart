import 'package:flutter/material.dart';
import './input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0D2D49),
          accentColor: Color(0xFF10DEBA),
          scaffoldBackgroundColor: Color(0xFF0D2D49)),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
