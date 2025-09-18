import 'package:flutter/material.dart';
import 'package:adv_basics/styled_text.dart';
import 'package:adv_basics/quiz_starting.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient:LinearGradient(colors: [
          Color.fromARGB(255, 49, 1, 97),
          Color.fromARGB(255, 100, 22, 182)
          ],
          begin:Alignment.topLeft,
          end:Alignment.bottomRight,
          )
      ),
      child:Center(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset('assets/images/quiz-logo.png', width: 200),
          SizedBox(height: 50),
          StyledText(),
          SizedBox(height: 20),
          QuizStarting() 
        ],
        )
      )
    );
  }
}