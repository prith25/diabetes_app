import 'package:flutter/material.dart';
import './age.dart';

class genderPage extends StatelessWidget {
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
                  'Are you a',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left:55.0, right:55.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => agePage(1)));
                  },
                  child: Ink.image(
                    image: AssetImage('images/8.png'),
                    height: 125,
                    width: 125,
                  ),

                ),
                SizedBox(height: 100),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => agePage(0)));
                  },
                  child: Ink.image(
                    image: AssetImage('images/7.png'),
                    height: 100,
                    width: 100,
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
