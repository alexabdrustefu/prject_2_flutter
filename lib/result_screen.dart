import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  //costruttore
 const ResultScreen({super.key});
  @override
  Widget build(context) {
    return SizedBox(
      //utilizza massima larghezza disponibile
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Risultati corretti!'),
            const SizedBox(height: 30,),
            const Text('Lista delle domande'),
            const SizedBox(height: 30,),
            TextButton(
              onPressed: (){},
              child:const Text('Ricomincia il quiz'))
          ],
        ),
      ),
    );
  }
}
