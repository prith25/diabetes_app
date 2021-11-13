import 'package:flutter/material.dart';

import './question_1.dart';
import './dq11.dart';

class diabetesPage extends StatelessWidget {

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
          SizedBox(height: 100),
          Container(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do you already have Diabetes?',
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
                              builder: (context) => genderPage()));
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
                              builder: (context) => questionOne()));
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
