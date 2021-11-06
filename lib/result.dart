import 'package:flutter/material.dart';

import './result_2.dart';

class resultPage extends StatelessWidget {
  int score = 0;

  String result1 = 'You are free from Prediabetes';
  String result2 = 'You are likely to have Prediabetes';

  resultPage(this.score);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: score < 5 ? resultPage2(score, result1) : resultPage2(score,result2),
    );
  }
}
