import 'package:flutter/material.dart';
import 'package:the_lms_try/std_login.dart';
import 'lec_login.dart';
/*
void main() {
  runApp(MaterialApp(home: lec_st_select()));
}

class lec_st_select extends StatefulWidget {
  @override
  State<lec_st_select> createState() => _lec_st_selectState();
}

class _lec_st_selectState extends State<lec_st_select> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Select User Type'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Are you a lecturer or student?',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => std_login()),
                      );
                      // Action for student button
                    },
                    child: Text('Student'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      textStyle: TextStyle(fontSize: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => lect_login()),
                      );
                    },
                    child: Text('Lecturer'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      textStyle: TextStyle(fontSize: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: lec_st_select(),
  ));
}

class lec_st_select extends StatefulWidget {
  @override
  State<lec_st_select> createState() => _lec_st_selectState();
}

class _lec_st_selectState extends State<lec_st_select> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade50,
        //AppBar
        appBar: AppBar(
          backgroundColor: Color(0xFF19589D),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )),
          title: const Text('Choose Your Role'),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 24),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //creating box 1
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => std_login()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFBFD8FF),
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 15,
                        offset: const Offset(0, 4),
                        color: Color(0xFFa9a9a9),
                      ),
                    ],
                  ),
                  height: 280.0,
                  width: 280.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img1.png',
                        height: 270.0,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 50.0),

              //creating box 2
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => lect_login()));
                },
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFBFD8FF),
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 15,
                        offset: const Offset(0, 4),
                        color: Color(0xFFa9a9a9),
                      ),
                    ],
                  ),
                  height: 280.0,
                  width: 280.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/img2.png',
                        height: 270.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
