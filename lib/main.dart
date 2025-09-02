import 'package:adv_basic/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: LinearGradient(
            
          ),
        ),
          child: StartScreen()),
      ),
    ),
  );
}
