import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import 'lec_dashboard.dart';

class add_questions extends StatefulWidget {
  @override
  State<add_questions> createState() => _add_questionsState();
}

class _add_questionsState extends State<add_questions> {
  ///text editing controller
  TextEditingController q1controller = TextEditingController();
  TextEditingController q2controller = TextEditingController();

  TextEditingController q3controller = TextEditingController();

  TextEditingController q4controller = TextEditingController();

  TextEditingController q5controller = TextEditingController();

  TextEditingController q6controller = TextEditingController();

  TextEditingController q7controller = TextEditingController();

  TextEditingController q8controller = TextEditingController();

  TextEditingController q9controller = TextEditingController();

  TextEditingController q10controller = TextEditingController();

  TextEditingController answer1controller = TextEditingController();
  TextEditingController answer2controller = TextEditingController();
  TextEditingController answer3controller = TextEditingController();
  TextEditingController answer4controller = TextEditingController();
  TextEditingController answer5controller = TextEditingController();

  TextEditingController answer6controller = TextEditingController();
  TextEditingController answer7controller = TextEditingController();
  TextEditingController answer8controller = TextEditingController();
  TextEditingController answer9controller = TextEditingController();
  TextEditingController answer10controller = TextEditingController();

  late String q1;
  late String q2;
  late String q3;
  late String q4;
  late String q5;
  late String q6;
  late String q7;
  late String q8;
  late String q9;
  late String q10;

  late String a1;
  late String a2;
  late String a3;
  late String a4;
  late String a5;
  late String a6;
  late String a7;
  late String a8;
  late String a9;
  late String a10;

  late DatabaseReference qus1 = FirebaseDatabase.instance.ref();

  late DatabaseReference qus2 = FirebaseDatabase.instance.ref();

  late DatabaseReference qus3 = FirebaseDatabase.instance.ref();

  late DatabaseReference qus4 = FirebaseDatabase.instance.ref();

  late DatabaseReference qus5 = FirebaseDatabase.instance.ref();

  late DatabaseReference qus6 = FirebaseDatabase.instance.ref();

  late DatabaseReference qus7 = FirebaseDatabase.instance.ref();

  late DatabaseReference qus8 = FirebaseDatabase.instance.ref();

  late DatabaseReference qus9 = FirebaseDatabase.instance.ref();

  late DatabaseReference qus10 = FirebaseDatabase.instance.ref();

  late DatabaseReference ans1 = FirebaseDatabase.instance.ref();
  late DatabaseReference ans2 = FirebaseDatabase.instance.ref();
  late DatabaseReference ans3 = FirebaseDatabase.instance.ref();
  late DatabaseReference ans4 = FirebaseDatabase.instance.ref();
  late DatabaseReference ans5 = FirebaseDatabase.instance.ref();
  late DatabaseReference ans6 = FirebaseDatabase.instance.ref();
  late DatabaseReference ans7 = FirebaseDatabase.instance.ref();
  late DatabaseReference ans8 = FirebaseDatabase.instance.ref();
  late DatabaseReference ans9 = FirebaseDatabase.instance.ref();
  late DatabaseReference ans10 = FirebaseDatabase.instance.ref();

  @override
  void initState() {
    super.initState();
    qus1 = FirebaseDatabase.instance.ref().child('question1');
    qus2 = FirebaseDatabase.instance.ref().child('question2');
    qus3 = FirebaseDatabase.instance.ref().child('question3');
    qus4 = FirebaseDatabase.instance.ref().child('question4');
    qus5 = FirebaseDatabase.instance.ref().child('question5');

    qus6 = FirebaseDatabase.instance.ref().child('question6');
    qus7 = FirebaseDatabase.instance.ref().child('question7');
    qus8 = FirebaseDatabase.instance.ref().child('question8');
    qus9 = FirebaseDatabase.instance.ref().child('question9');
    qus10 = FirebaseDatabase.instance.ref().child('question10');

    ans1 = FirebaseDatabase.instance.ref().child('answer1');
    ans2 = FirebaseDatabase.instance.ref().child('answer2');
    ans3 = FirebaseDatabase.instance.ref().child('answer3');
    ans4 = FirebaseDatabase.instance.ref().child('answer4');
    ans5 = FirebaseDatabase.instance.ref().child('answer5');
    ans6 = FirebaseDatabase.instance.ref().child('answer6');
    ans7 = FirebaseDatabase.instance.ref().child('answer7');
    ans8 = FirebaseDatabase.instance.ref().child('answer8');
    ans9 = FirebaseDatabase.instance.ref().child('answer9');
    ans10 = FirebaseDatabase.instance.ref().child('answer10');
  }

  //question 1
  Future<void> questionno1(String qs1, String as1) async {
    await qus1.set(qs1);
    await ans1.set(as1);
  }

  //question 2
  Future<void> questionno2(String qs2, String as2) async {
    await qus2.set(qs2);
    await ans2.set(as2);
  }

  //question3
  Future<void> questionno3(String qs3, String as3) async {
    await qus3.set(qs3);
    await ans3.set(as3);
  }

  Future<void> questionno4(String qs1, String as1) async {
    await qus4.set(qs1);
    await ans4.set(as1);
  }

  Future<void> questionno5(String qs1, String as1) async {
    await qus5.set(qs1);
    await ans5.set(as1);
  }

  Future<void> questionno6(String qs1, String as1) async {
    await qus6.set(qs1);
    await ans6.set(as1);
  }

  Future<void> questionno7(String qs1, String as1) async {
    await qus7.set(qs1);
    await ans7.set(as1);
  }

  Future<void> questionno8(String qs1, String as1) async {
    await qus8.set(qs1);
    await ans8.set(as1);
  }

  Future<void> questionno9(String qs1, String as1) async {
    await qus9.set(qs1);
    await ans9.set(as1);
  }

  Future<void> questionno10(String qs1, String as1) async {
    await qus10.set(qs1);
    await ans10.set(as1);
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
            'Add Quiz',
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
              //question1
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
                        controller: q1controller,
                        onChanged: (value) {
                          q1 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Question 1',
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
                        controller: answer1controller,
                        onChanged: (value) {
                          a1 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Answer : true/false only',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  questionno1(q1, a1);
                  answer1controller.clear();
                  q1controller.clear();
                },
                child: Text("Add Question "),
              ),
              //question2
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
                        controller: q2controller,
                        onChanged: (value) {
                          q2 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Question 2',
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
                        controller: answer2controller,
                        onChanged: (value) {
                          a2 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Answer : true/false only',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  questionno2(q2, a2);
                  answer2controller.clear();
                  q2controller.clear();
                },
                child: Text("Add Question "),
              ),

              ///q2 end
              ///q3
              //question1
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
                        controller: q3controller,
                        onChanged: (value) {
                          q3 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Question 3',
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
                        controller: answer3controller,
                        onChanged: (value) {
                          a3 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Answer : true/false only',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  questionno3(q3, a3);
                  answer3controller.clear();
                  q3controller.clear();
                },
                child: Text("Add Question "),
              ),

              ///q3 end
              ///q4
              //question1
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
                        controller: q4controller,
                        onChanged: (value) {
                          q4 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Question 4',
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
                        controller: answer4controller,
                        onChanged: (value) {
                          a4 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Answer : true/false only',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  questionno4(q4, a4);
                  answer4controller.clear();
                  q4controller.clear();
                },
                child: Text("Add Question "),
              ),

              ///q4 end
              ///q5
              //question1
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
                        controller: q5controller,
                        onChanged: (value) {
                          q5 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Question 5',
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
                        controller: answer5controller,
                        onChanged: (value) {
                          a5 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Answer : true/false only',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  questionno5(q5, a5);
                  answer5controller.clear();
                  q5controller.clear();
                },
                child: Text("Add Question "),
              ),

              ///q5 end

              ///q6
              //question1
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
                        controller: q6controller,
                        onChanged: (value) {
                          q6 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Question 6',
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
                        controller: answer6controller,
                        onChanged: (value) {
                          a6 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Answer : true/false only',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  questionno6(q6, a6);
                  answer6controller.clear();
                  q6controller.clear();
                },
                child: Text("Add Question "),
              ),

              ///q6 end
              ///q7
              //question1
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
                        controller: q7controller,
                        onChanged: (value) {
                          q7 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Question 7',
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
                        controller: answer7controller,
                        onChanged: (value) {
                          a7 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Answer : true/false only',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  questionno7(q7, a7);
                  answer7controller.clear();
                  q7controller.clear();
                },
                child: Text("Add Question "),
              ),

              ///q7 end
              ///q8
              //question1
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
                        controller: q8controller,
                        onChanged: (value) {
                          q8 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Question 8',
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
                        controller: answer8controller,
                        onChanged: (value) {
                          a8 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Answer : true/false only',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  questionno8(q8, a8);
                  answer8controller.clear();
                  q8controller.clear();
                },
                child: Text("Add Question "),
              ),

              ///q8 end
              ///q9
              //question1
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
                        controller: q9controller,
                        onChanged: (value) {
                          q9 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Question 9',
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
                        controller: answer9controller,
                        onChanged: (value) {
                          a9 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Answer : true/false only',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  questionno9(q9, a9);
                  answer9controller.clear();
                  q9controller.clear();
                },
                child: Text("Add Question "),
              ),

              ///q9 end
              ///q10
              //question1
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
                        controller: q10controller,
                        onChanged: (value) {
                          q10 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Question 10',
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
                        controller: answer10controller,
                        onChanged: (value) {
                          a10 = value;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.question_answer,
                          ),
                          labelText: 'Answer : true/false only',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  questionno10(q10, a10);
                  answer10controller.clear();
                  q10controller.clear();
                },
                child: Text("Add Question "),
              ),

              ///q10end
            ],
          ),
        ),
      ),
    );
  }
}
