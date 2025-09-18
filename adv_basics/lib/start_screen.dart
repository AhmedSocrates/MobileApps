import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  StartScreen(this.startQuiz , {super.key});

  final void Function() startQuiz;
  
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
             width: 300,
             color: const Color.fromARGB(152, 255, 255, 255)
             ),
          SizedBox(height: 80), 
          Text(
            "Lets learn flutter in a fun way!", 
            style: TextStyle(
              color: Colors.white, 
              fontSize: 28
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(onPressed:startQuiz ,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white
          ), 
          icon: Icon(Icons.arrow_right_alt), 
          label: const Text('Start Quiz'), 
          )
        ],
      ),
    );
  }
}