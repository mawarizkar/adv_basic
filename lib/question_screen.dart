import 'package:adv_basic/answer_button.dart';
import 'package:flutter/material.dart';
import 'pack';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //ini ngatur secara vertikal
        children: [
          Text('The Question....', style: TextStyle(color: Colors.white)),
          SizedBox(height: 30),
          AnswerButton(answerText: 'answerText 1', onTap: () {}),
          SizedBox(height: 10),
          AnswerButton(answerText: 'answerText 2', onTap: () {}),
          SizedBox(height: 10),
          AnswerButton(answerText: 'answerText 3', onTap: () {}),
        ],
      ),
    );
  }
}
