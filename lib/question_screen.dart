import 'package:flutter/material.dart';

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
    return Column(children: [
      Text('The Question....'),
      SizedBox(height: 30,),
      ElevatedButton(onPressed: (){}, child: Text('Answer 1')),
      ElevatedButton(onPressed: (){}, child: Text('Answer 2')),
      ElevatedButton(onPressed: (){}, child: Text('Answer 3')),
    ],);
  }
}
