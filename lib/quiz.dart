import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prject_2/question_screen.dart';
import 'package:prject_2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //memorizzo il widget
  Widget ?activeScreen;
  @override
  void initState(){
     activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      //richiamo il widget creato
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
          child: activeScreen,
        ),
      ),
    );
  }
}
