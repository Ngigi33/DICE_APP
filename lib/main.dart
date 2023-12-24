import 'package:flutter/material.dart';
import 'package:lesson_1/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContaner(
               Color.fromARGB(255, 206, 209, 3),
                Color.fromARGB(255, 17, 1, 17)
                ),
      ),
    ),
  );
}

