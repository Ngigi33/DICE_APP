import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

final randomizer = Random();

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceroll = 2;
  void rolldice() {
    setState(() {
      currentDiceroll = randomizer.nextInt(6) + 1; //0 to 5 then +1 hence 1 to 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('DICE ROLL',
            style: TextStyle(
                fontSize: 34,
                color: Colors.blueGrey,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w900,
                letterSpacing:5,
                )
                ),
        const SizedBox(height: 60,),
        Image.asset(
          'assets/dice-images/dice-$currentDiceroll.png',
          width: 200,
        ),
         const SizedBox(height: 60,),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 30,
              // ),
              foregroundColor: Colors.white70,
              backgroundColor: const Color.fromARGB(255, 21, 2, 53),
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('ROLL DICE'),
        )
      ],
    );
  }
}
