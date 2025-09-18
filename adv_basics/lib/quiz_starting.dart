import 'package:flutter/material.dart';

class QuizStarting extends StatefulWidget{
  const QuizStarting({super.key});


  @override
  State<QuizStarting> createState() {
    
    return _QuizStarting(); 
  }

}

class _QuizStarting extends State<QuizStarting>{

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ElevatedButton(onPressed: (){},
       child:Text(
        "Start Quiz", style: TextStyle(
          color: Colors.black, 
          fontSize: 20
        ),
       )
       )
    );
  }
}

