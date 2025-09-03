import 'package:adv_basic/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
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
          child: StartScreen(),
        ),
      ),
    ),
  );
}
