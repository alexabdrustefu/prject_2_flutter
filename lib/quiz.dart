import 'package:flutter/material.dart';
import 'package:prject_2/data/question.dart';
import 'package:prject_2/question_screen.dart';
import 'package:prject_2/result_screen.dart';
import 'package:prject_2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //genero  variabile per memorizzare le risposte date
  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }
//funzione per assegnare le risposte date
  void chooseAnswer(String answer){
    selectedAnswer.add(answer);
    if(selectedAnswer.length == question.length){
      //schermata dei risultati finali
      setState(() {
        //una volta finite le domande pongo la lista ad elemento vuoto
        //selectedAnswer =[];
        activeScreen = 'result-screen';
      });
    }
  }
  //funzione per il restart del quiz
    void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'questions-screen';
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'question-screen'){
     screenWidget= QuestionScreen(onSelectAnswer: chooseAnswer,);
    }
  
    if(activeScreen == 'result-screen'){
      screenWidget= ResultScreen(chosenAnswer: selectedAnswer ,onRestart: restartQuiz);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          //espressione ternaria
          child: screenWidget,
        ),
      ),
    );
  }
}
