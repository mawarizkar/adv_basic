import 'package:adv_basic/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
    State<Quiz> createState(){
    return _QuizState();
  }

}
  
class _QuizState extends State<Quiz>{
  Widget activeScreen = StartScreen(); 

  void switchScreen(){
    setState(() {
      activeScreen = QuestionScreen();
    });
  }

  @override
  Widget build(context){
    return MaterialApp(
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 131, 6, 180),
                  const Color.fromARGB(255, 203, 196, 206),
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