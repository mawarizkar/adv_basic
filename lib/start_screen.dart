import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png', 
            width: 300, 
            color: const Color.fromARGB(94, 255, 255, 255), //cara ngasi warna transparan
          ),
          SizedBox(height: 80),
          Text(
            'Learn Flutter the fun way',
            style: TextStyle(
              color: Colors.white, 
              fontSize: 24
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {}, 
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white), 
            label: Text('Start Quiz'), //tadinya child, tapi kalo pake OutlinedButton.icon jadinya label
            icon: Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
