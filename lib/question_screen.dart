import 'package:flutter/material.dart';
import 'package:prject_2/answer_button.dart';
import 'package:prject_2/data/question.dart';
import 'package:google_fonts/google_fonts.dart';
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});
  
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    setState((){
      widget.onSelectAnswer(selectedAnswer);
       currentQuestionIndex ++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = question[currentQuestionIndex];
    return SizedBox(
      //utilizza massima larghezza disponibile
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //riempio l'intera larghezza
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color:const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ) ,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            //con ... prendo i singoli elementi della lista per ottenere un elenco di widget
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton(
                answerText: answer,
                //funzione anonima
                onTap: (){
                  answerQuestion(answer);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
