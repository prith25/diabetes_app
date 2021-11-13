import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:restart_app/restart_app.dart';

class finalresultPage extends StatelessWidget {
  String result = '';
  int score = 0;

  openURL() async {
    var url = "https://www.diabeticks.in";
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  finalresultPage(this.score, this.result);

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
          SizedBox(height: 70),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$result',
                    style:
                    TextStyle(fontSize: 22, fontWeight: FontWeight.w300)),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.only(left:40.0, top: 20.0, right:40.0 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Please visit our',
                    style:
                    TextStyle(fontSize: 22, fontWeight: FontWeight.w300)),
                TextButton(
                    onPressed: () {
                      openURL();
                    },
                    child: Text('Website',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w300))),
              ],
            ),
          ),
          Center(
            child: Text('for more information',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300)),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.fromLTRB(55, 0, 55, 0),

            child: ElevatedButton(
                onPressed: () async {
                  Restart.restartApp();
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(12.0),
                    primary: Colors.lightBlue.shade700,
                    maximumSize: Size.infinite),
                child: Text(
                  'Retake test',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                )),
          ),
        ],
      ),
    );
  }
}
