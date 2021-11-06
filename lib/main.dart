import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1 in 3',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.lightBlue.shade700,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      ' people have',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  'Prediabetes',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 50),
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'It takes only ',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '60 Seconds',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.lightBlue.shade700,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              )),
              Center(
                child: Text(
                  'for a Prediabetes test',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.lightBlue.shade700,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Got a Minute',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                      ),
                  ),
                  Icon(
                    Icons.arrow_forward_sharp,
                  ),
                ],
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}