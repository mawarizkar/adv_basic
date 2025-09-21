import 'package:adv_basic/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      //setState() untuk ngasih tau ada perubahan data, karena kalo bagian buil() hanya dipanggil 1x
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        //di sini pake container karena punya argumen margin yang bisa diset
        margin: EdgeInsets.all(40), //ini fungsinya sama kaya padding
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //ini ngatur secara vertikal
          crossAxisAlignment:
              CrossAxisAlignment.stretch, //ini ngatur secara horizontal
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answerItem) {
              //map itu iterable
              return AnswerButton(
                answerText: answerItem,
                onTap: answerQuestion,
              );
            }),
          ],
        ),
      ),
    );
  }
}
