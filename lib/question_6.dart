import 'package:flutter/material.dart';

import './result.dart';

class questionSix extends StatelessWidget {
  int score = 0;

  questionSix(this.score);

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
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Are you Overweight?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(55, 0, 55, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => resultPage(score + 0)));
                  },
                  child: Ink.image(
                    image: AssetImage('images/3.png'),
                    height: 100,
                    width: 100,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => resultPage(score + 1)));
                  },
                  child: Ink.image(
                    image: AssetImage('images/5.png'),
                    height: 90,
                    width: 90,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(55, 0, 55, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => resultPage(score + 2)));
                  },
                  child: Ink.image(
                    image: AssetImage('images/4.png'),
                    height: 100,
                    width: 100,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => resultPage(score + 3)));
                  },
                  child: Ink.image(
                    image: AssetImage('images/6.png'),
                    height: 90,
                    width: 90,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
