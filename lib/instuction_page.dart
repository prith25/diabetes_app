import 'package:flutter/material.dart';
import './question_1.dart';

class instructionPage extends StatelessWidget {
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
                  'Your Score:  0',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(height: 60),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You just have to answer ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '6 questions',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.lightBlue.shade700,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      ' and your score',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Text(
                  'will be updated in the top',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'If your score is 5 or more,',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
              Text(
                'you are likely to have',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
              Text(
                'Prediabetes',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.red.shade600,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          SizedBox(height: 80),
          Container(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => questionOne()));
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(12.0),
                      primary: Colors.lightBlue.shade700,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      maximumSize: Size.infinite),
                  child: Text(
                    'Let\'s Begin',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
