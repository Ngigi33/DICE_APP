import 'package:flutter/material.dart';


class StyledText extends StatelessWidget {
  const StyledText(this.msg,{super.key});

final String msg;

   @override
   Widget build (BuildContext context){
    return  Text(
                msg,
                style: const TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 194, 163, 163),
                ));
   }
} 