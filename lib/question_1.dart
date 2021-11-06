import 'package:flutter/material.dart';
import './question_2.dart';

class questionOne extends StatelessWidget {
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
          SizedBox(height: 50),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Are you a',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => questionTwo(1)));
                  },
                  splashColor: Colors.lightBlue.shade200,
                  icon: Icon(
                    Icons.male,
                  ),
                  iconSize: 100.0,
                  color: Colors.lightBlue.shade700,
                ),
                SizedBox(height: 100),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => questionTwo(0)));
                  },
                  splashColor: Colors.lightBlue.shade200,
                  icon: Icon(
                    Icons.female,
                  ),
                  iconSize: 100.0,
                  color: Colors.lightBlue.shade700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
