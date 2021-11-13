import 'package:flutter/material.dart';

import './final_result.dart';

class dresultPage1 extends StatelessWidget {
  int score = 0;

  String result1 = 'You are free from Prediabetes';
  String result2 = 'You are likely to have Prediabetes';

  dresultPage1(this.score);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: score < 8 ? finalresultPage(score, result1) : finalresultPage(score,result2),
    );
  }
}
