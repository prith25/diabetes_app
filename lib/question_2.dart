import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './question_3.dart';

class questionTwo extends StatelessWidget {
  int score = 0;

  questionTwo(this.score);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          bottomOpacity: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Image.asset(
            "images/d.png",
            height: 200.0,
            width: 200.0,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your Score:  $score',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'How old are you',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => questionThree(score + 0)));
                }, style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(12.0),
                    primary: Colors.lightBlue.shade700,
                    maximumSize: Size.infinite),
                  child: Text(
                    '0 - 40',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),)
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => questionThree(score + 1)));
                }, style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(12.0),
                    primary: Colors.lightBlue.shade700,
                    maximumSize: Size.infinite),
                    child: Text(
                      '40 - 50',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),)
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => questionThree(score + 2)));
                }, style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(12.0),
                    primary: Colors.lightBlue.shade700,
                    maximumSize: Size.infinite),
                    child: Text(
                      '50 - 60',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),)
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => questionThree(score + 3)));
                }, style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(12.0),
                    primary: Colors.lightBlue.shade700,
                    maximumSize: Size.infinite),
                    child: Text(
                      ' > 60 ',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),)
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
