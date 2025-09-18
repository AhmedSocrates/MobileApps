import 'package:adv_basics/question_summary.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswer});

  final List<String> choosenAnswer;

  List<Map<String,Object>> getSummaryData(){
    final List<Map<String,Object>> summary = [];

    for (var i=0;i<choosenAnswer.length;i++){
      summary.add({
        'question_index': i,
        'question':questions[i].text,
        'correct_answer':questions[i].answers[0],
        'user_answer': choosenAnswer[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summary = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summary.where((data){
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered $numCorrectQuestions out of $numTotalQuestions questions correctly"),
            SizedBox(height: 30,),
            QuestionSummary(summary),
            SizedBox(height: 30,),
            TextButton(onPressed: (){}, 
            child: const Text('Restart Quiz!'),
            )
          ]
        ),
      ),
    );
  }
}
