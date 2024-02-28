import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prject_2/data/question.dart';
import 'package:prject_2/question_summary/question_summary.dart';

class ResultScreen extends StatelessWidget {
  //costruttore
 const ResultScreen({super.key, required this.chosenAnswer,required this.onRestart,});
  final List<String> chosenAnswer;
final void Function() onRestart;
  List<Map<String,Object>> get summaryData{
    final List<Map<String,Object>> summary=[];
    for (var i=0; i<chosenAnswer.length; i++){
      summary.add({
        'question_index':i,
        'question': question[i].text,
        'correct_answer':question[i].answer[0],
        'user_answer': chosenAnswer[i]
      });

    }

    return summary;
  }
  

    @override
  Widget build(BuildContext context) {
    final numTotalQuestions = question.length;
    //attraverso where filtro i dati
    final numCorrectQuestions = summaryData.where(
          (data) => data['user_answer'] == data['correct_answer'],
        )
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Le tue risposte corrette $numCorrectQuestions di $numTotalQuestions',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 200, 253),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 50,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Ricomincia il quiz!'),
            )
          ],
        ),
      ),
    );
  }
}