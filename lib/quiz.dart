import 'package:adv_basic/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Widget? activeScreen; //it can be null, sampe initState dijalankan pertama kali

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }

  // void switchScreen(){
  //   setState(() {
  //     activeScreen = QuestionScreen();
  //   });
  // }

  //dikasih final, sebenernya kalo pake final itu nilainya tetap, tidak bisa berubah-ubah, tapi kalau final List.add() masih bisa, karena menambah isinya di dalam memori
  final List<String> selectedAnswers = [];

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(context) {
    final screenWidget =
        activeScreen == 'start-screen'
            ? StartScreen(switchScreen)
            : QuestionScreen(onSelectedAnswer: chooseAnswer);
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
          child: screenWidget,
        ),
      ),
    );
  }
}
