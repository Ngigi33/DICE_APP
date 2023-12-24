import 'package:flutter/material.dart';
import 'package:lesson_1/dice_roller.dart';
//import 'package:lesson_1/style_text.dart';

class GradientContaner extends StatelessWidget {
  const GradientContaner(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child:const Center(child: DiceRoller()),
    );
  }
}
