import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

//creo la schermata principale
class StartScreen extends StatelessWidget {
  //costruttore
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        //fix altezza del logo
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            //applico la trasparentezza dal colore
            color: const Color.fromARGB(148, 237, 237, 237),
            //  Opacity(
            // opacity: 0.6, //faccio il set dell'opacitá
            // child: Image.asset('assets/images/quiz-logo.png',
            // width: 300
            //),
          ),
          const SizedBox(height: 80),
         Text(
            'Quiz flutter!',
            style: GoogleFonts.lato(color: const Color.fromARGB(255, 237, 223, 252), fontSize: 24),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed:startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Inizia il quiz'))
        ],
      ),
    );
  }
}
