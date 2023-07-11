import 'package:flutter/material.dart';
import 'gradient_container';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
           Color.fromARGB(255, 11, 30, 106),
           Color.fromARGB(255, 8, 30, 86),
        ),
      ),
    ),
  );
}
