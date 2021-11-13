import 'package:flutter/material.dart';

import './dq2.dart';

class cataractsPage extends StatelessWidget {
  int score = 0;

  cataractsPage(this.score);
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
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Did you had any Cataract surgery?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.fromLTRB(55, 0, 55, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => kidneyPage(score + 1)));
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(12.0),
                        primary: Colors.lightBlue.shade700,
                        maximumSize: Size.infinite),
                    child: Text(
                      'YES',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => kidneyPage(score + 0)));
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(12.0),
                        primary: Colors.lightBlue.shade700,
                        maximumSize: Size.infinite),
                    child: Text(
                      'NO',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
