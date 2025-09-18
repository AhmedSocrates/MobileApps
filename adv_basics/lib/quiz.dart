import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/results_screen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  List<String> selectedAnswers = [];

  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    activeScreen = StartScreen(switchScreen);
    
  }
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = ResultsScreen(choosenAnswer: selectedAnswers);
      });
    }
  }

  

  void switchScreen(){  
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });

  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 7, 2),
                Color.fromARGB(255, 48, 2, 98),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen
        ),
      ),
    );
  }
}