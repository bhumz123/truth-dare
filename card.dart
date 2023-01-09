// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class QuestionCards extends StatelessWidget {
  final questionName;
  final Color;
  final height;
  final width;
  const QuestionCards({
    super.key,
    required this.questionName,
    required this.Color,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      
      child: Card(
        color: Color,
        elevation: 5,
        child: Text(
          questionName,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
