import 'package:flutter/material.dart';
import 'package:prject_2/start_screen.dart';

//creo main
void main() {
  //run dell'app
  runApp(
    MaterialApp(
      //richiamo il widget creato
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168)
            ]),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
