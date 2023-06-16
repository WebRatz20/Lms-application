import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import 'lec_dashboard.dart';

class add_report extends StatefulWidget {
  @override
  State<add_report> createState() => _add_reportState();
}

class _add_reportState extends State<add_report> {
  TextEditingController modnamecntoller = TextEditingController();
  TextEditingController st1cntrller = TextEditingController();
  TextEditingController st2cntrller = TextEditingController();
  TextEditingController st3cntrller = TextEditingController();
  TextEditingController st4cntrller = TextEditingController();
  TextEditingController st5cntrller = TextEditingController();
  TextEditingController st6cntrller = TextEditingController();
  TextEditingController st7cntrller = TextEditingController();
  TextEditingController st8cntrller = TextEditingController();
  TextEditingController st9cntrller = TextEditingController();
  TextEditingController st10cntrller = TextEditingController();

  TextEditingController mark1controller = TextEditingController();
  TextEditingController mark2controller = TextEditingController();
  TextEditingController mark3controller = TextEditingController();
  TextEditingController mark4controller = TextEditingController();
  TextEditingController mark5controller = TextEditingController();
  TextEditingController mark6controller = TextEditingController();
  TextEditingController mark7controller = TextEditingController();
  TextEditingController mark8controller = TextEditingController();
  TextEditingController mark9controller = TextEditingController();
  TextEditingController mark10controller = TextEditingController();

  late String modulename;
  late String st1;
  late String st2;
  late String st3;
  late String st4;
  late String st5;
  late String st6;
  late String st7;
  late String st8;
  late String st9;
  late String st10;

  late String mk1;
  late String mk2;
  late String mk3;
  late String mk4;
  late String mk5;
  late String mk6;
  late String mk7;
  late String mk8;
  late String mk9;
  late String mk10;

  late DatabaseReference modname = FirebaseDatabase.instance.ref();
  late DatabaseReference std1 = FirebaseDatabase.instance.ref();
  late DatabaseReference std2 = FirebaseDatabase.instance.ref();
  late DatabaseReference std3 = FirebaseDatabase.instance.ref();
  late DatabaseReference std4 = FirebaseDatabase.instance.ref();
  late DatabaseReference std5 = FirebaseDatabase.instance.ref();
  late DatabaseReference std6 = FirebaseDatabase.instance.ref();
  late DatabaseReference std7 = FirebaseDatabase.instance.ref();
  late DatabaseReference std8 = FirebaseDatabase.instance.ref();
  late DatabaseReference std9 = FirebaseDatabase.instance.ref();
  late DatabaseReference std10 = FirebaseDatabase.instance.ref();

  late DatabaseReference mrks1 = FirebaseDatabase.instance.ref();
  late DatabaseReference mrks2 = FirebaseDatabase.instance.ref();
  late DatabaseReference mrks3 = FirebaseDatabase.instance.ref();
  late DatabaseReference mrks4 = FirebaseDatabase.instance.ref();
  late DatabaseReference mrks5 = FirebaseDatabase.instance.ref();
  late DatabaseReference mrks6 = FirebaseDatabase.instance.ref();
  late DatabaseReference mrks7 = FirebaseDatabase.instance.ref();
  late DatabaseReference mrks8 = FirebaseDatabase.instance.ref();
  late DatabaseReference mrks9 = FirebaseDatabase.instance.ref();
  late DatabaseReference mrks10 = FirebaseDatabase.instance.ref();

  @override
  void initState() {
    super.initState();
    modname = FirebaseDatabase.instance.ref().child('modulename');
    std1 = FirebaseDatabase.instance.ref().child('student1');
    std2 = FirebaseDatabase.instance.ref().child('student2');
    std3 = FirebaseDatabase.instance.ref().child('student3');
    std4 = FirebaseDatabase.instance.ref().child('student4');
    std5 = FirebaseDatabase.instance.ref().child('student5');
    std6 = FirebaseDatabase.instance.ref().child('student6');
    std7 = FirebaseDatabase.instance.ref().child('student7');
    std8 = FirebaseDatabase.instance.ref().child('student8');
    std9 = FirebaseDatabase.instance.ref().child('student9');
    std10 = FirebaseDatabase.instance.ref().child('student10');
    mrks1 = FirebaseDatabase.instance.ref().child('mark1');
    mrks2 = FirebaseDatabase.instance.ref().child('mark2');
    mrks3 = FirebaseDatabase.instance.ref().child('mark3');
    mrks4 = FirebaseDatabase.instance.ref().child('mark4');
    mrks5 = FirebaseDatabase.instance.ref().child('mark5');
    mrks6 = FirebaseDatabase.instance.ref().child('mark6');
    mrks7 = FirebaseDatabase.instance.ref().child('mark7');
    mrks8 = FirebaseDatabase.instance.ref().child('mark8');
    mrks9 = FirebaseDatabase.instance.ref().child('mark9');
    mrks10 = FirebaseDatabase.instance.ref().child('mark10');
  }

  Future<void> submitreport(
      String modnam,
      String s1,
      String m1,
      String s2,
      String m2,
      String s3,
      String m3,
      String s4,
      String m4,
      String s5,
      String m5,
      String s6,
      String m6,
      String s7,
      String m7,
      String s8,
      String m8,
      String s9,
      String m9,
      String s10,
      String m10) async {
    await modname.set(modnam);
    await std1.set(s1);
    await mrks1.set(m1);
    await std2.set(s2);
    await mrks2.set(m2);
    await std3.set(s3);
    await mrks3.set(m3);
    await std4.set(s4);
    await mrks4.set(m4);
    await std5.set(s5);
    await mrks5.set(m5);
    await std6.set(s6);
    await mrks6.set(m6);
    await std7.set(s7);
    await mrks7.set(m7);
    await std8.set(s8);
    await mrks8.set(m8);
    await std9.set(s9);
    await mrks9.set(m9);
    await std10.set(s10);
    await mrks10.set(m10);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => lec_dashboard()),
              );
            },
          ),
          title: Text(
            'Add Report',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color(0xFF19589D),
        ),
        body: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.blue.shade300,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2, // Set the width of the SizedBox to 300 pixels
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: modnamecntoller,
                          onChanged: (value) {
                            modulename = value;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.report,
                            ),
                            labelText: 'Module Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              ///first student field
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2, // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: st1cntrller,
                        onChanged: (value) {
                          st1 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.boy,
                          ),
                          labelText: 'Student 1',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: mark1controller,
                        onChanged: (value) {
                          mk1 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.score,
                          ),
                          labelText: 'Marks',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///first student end
              ///second
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2, // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: st2cntrller,
                        onChanged: (value) {
                          st2 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.boy,
                          ),
                          labelText: 'Student 2',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: mark2controller,
                        onChanged: (value) {
                          mk2 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.score,
                          ),
                          labelText: 'Marks',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///second end
              ///third
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2, // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: st3cntrller,
                        onChanged: (value) {
                          st3 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.boy,
                          ),
                          labelText: 'Student 3',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: mark3controller,
                        onChanged: (value) {
                          mk3 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.score,
                          ),
                          labelText: 'Marks',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///third end
              ///4
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2, // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: st4cntrller,
                        onChanged: (value) {
                          st4 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.boy,
                          ),
                          labelText: 'Student 4',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: mark4controller,
                        onChanged: (value) {
                          mk4 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.score,
                          ),
                          labelText: 'Marks',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///4 end
              ///5
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2, // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: st5cntrller,
                        onChanged: (value) {
                          st5 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.boy,
                          ),
                          labelText: 'Student 5',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: mark5controller,
                        onChanged: (value) {
                          mk5 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.score,
                          ),
                          labelText: 'Marks',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///5 end
              ///6
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2, // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: st6cntrller,
                        onChanged: (value) {
                          st6 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.boy,
                          ),
                          labelText: 'Student 6',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: mark6controller,
                        onChanged: (value) {
                          mk6 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.score,
                          ),
                          labelText: 'Marks',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///6end
              ///7
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2, // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: st7cntrller,
                        onChanged: (value) {
                          st7 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.boy,
                          ),
                          labelText: 'Student 7',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: mark7controller,
                        onChanged: (value) {
                          mk7 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.score,
                          ),
                          labelText: 'Marks',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///7 end
              ///8
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2, // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: st8cntrller,
                        onChanged: (value) {
                          st8 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.boy,
                          ),
                          labelText: 'Student 8',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: mark8controller,
                        onChanged: (value) {
                          mk8 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.score,
                          ),
                          labelText: 'Marks',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///8 end
              ///9
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2, // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: st9cntrller,
                        onChanged: (value) {
                          st9 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.boy,
                          ),
                          labelText: 'Student 9',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: mark9controller,
                        onChanged: (value) {
                          mk9 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.score,
                          ),
                          labelText: 'Marks',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///9 end
              ///10
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2, // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: st10cntrller,
                        onChanged: (value) {
                          st10 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.boy,
                          ),
                          labelText: 'Student 10',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    // Set the width of the SizedBox to 300 pixels
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: mark10controller,
                        onChanged: (value) {
                          mk10 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.score,
                          ),
                          labelText: 'Marks',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///10 end
              ElevatedButton(
                onPressed: () {
                  submitreport(
                      modulename,
                      st1,
                      mk1,
                      st2,
                      mk2,
                      st3,
                      mk3,
                      st4,
                      mk4,
                      st5,
                      mk5,
                      st6,
                      mk6,
                      st7,
                      mk7,
                      st8,
                      mk8,
                      st9,
                      mk9,
                      st10,
                      mk10);
                  modnamecntoller.clear();
                  st1cntrller.clear();
                  st2cntrller.clear();
                  st3cntrller.clear();
                  st4cntrller.clear();
                  st5cntrller.clear();
                  st6cntrller.clear();
                  st7cntrller.clear();
                  st8cntrller.clear();
                  st9cntrller.clear();
                  st10cntrller.clear();
                  mark1controller.clear();
                  mark2controller.clear();
                  mark3controller.clear();
                  mark4controller.clear();
                  mark5controller.clear();
                  mark6controller.clear();
                  mark7controller.clear();
                  mark8controller.clear();
                  mark9controller.clear();
                  mark10controller.clear();
                },
                child: Text("Submit "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
