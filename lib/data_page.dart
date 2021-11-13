import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './diabetes_page.dart';
import './dq11.dart';

class dataPage extends StatelessWidget {
  CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  String textNote = '';
  String textNumber = '';
  final formKey = GlobalKey<FormState>();

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
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Column(
                children: [
                  Text(''),
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(50),
                    margin: EdgeInsets.only(top: 70),
                    child: Column(
                      children: [
                        TextFormField(
                          onChanged: (value1) {
                            textNote = value1;
                          },
                          validator: (val) {
                            if (val!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(val)) {
                              return "Enter correct name";
                            }
                            else {
                              return null;
                            }
                          },
                          cursorColor: Colors.lightBlue.shade700,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: 'Name',
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Color(0xFF1B1F32)),
                          ),
                        ),
                        SizedBox(height: 30),
                        TextFormField(
                          onChanged: (value2) {
                            textNumber = value2;
                          },
                          validator: (val) {
                            if (val!.isEmpty || !RegExp(r'^\d{10}').hasMatch(val)) {
                              return "Enter correct number";
                            }
                            else {
                              return null;
                            }
                          },
                          cursorColor: Colors.lightBlue.shade700,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Mobile Number',
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Color(0xFF1B1F32)),
                          ),
                        ),
                        SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                            await users.add({
                              'name': textNote,
                              'number': textNumber,
                            }).then((value) => print('name entered'));

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => diabetesPage()));}},
                          child: Text('Continue'),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
