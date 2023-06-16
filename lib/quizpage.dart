import 'dart:io';
import 'dart:ui';
import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:the_lms_try/lec_dashboard.dart';
import 'package:the_lms_try/std_dashboard.dart';
import 'quiz_ques.dart';
import 'quiz_questions.dart';

//Brains qbrains = Brains();
void main() => runApp(quiz());

class quiz extends StatelessWidget {
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
                MaterialPageRoute(builder: (context) => st_dashboard()),
              );
            },
          ),
          title: Text(
            'Quiz',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color(0xFFDBD6E5),
        ),
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late DatabaseReference _databaseReference;

  String qu1 = 'question will be added ';
  String qu2 = 'question will be added ';
  String qu3 = 'question will be added ';
  String qu4 = 'question will be added ';
  String qu5 = 'question will be added ';
  String qu6 = 'question will be added ';
  String qu7 = 'question will be added ';
  String qu8 = 'question will be added ';
  String qu9 = 'question will be added ';
  String qu10 = 'question will be added ';

  bool an1 = true;
  bool an2 = false;
  bool an3 = true;
  bool an4 = true;
  bool an5 = true;
  bool an6 = true;
  bool an7 = true;
  bool an8 = true;
  bool an9 = true;
  bool an10 = true;
  List<MyQuestion> questions = [];
  List<myanswers> answers = [];

  ///data fetching
  @override
  void initState() {
    super.initState();

    ///answer1
    _databaseReference = FirebaseDatabase.instance.reference().child('answer1');
    _databaseReference.onValue.listen((event) {
      setState(() {
        an1 = event.snapshot.value.toString() as bool;

        answers.add(
          myanswers(a: an1),
        );
      });
    });

    ///answer 1 end
    ///an2
    _databaseReference = FirebaseDatabase.instance.reference().child('answer2');
    _databaseReference.onValue.listen((event) {
      setState(() {
        an2 = event.snapshot.value.toString() as bool;

        answers.add(
          myanswers(a: an2),
        );
      });
    });

    ///an2 end
    ///an3
    _databaseReference = FirebaseDatabase.instance.reference().child('answer3');
    _databaseReference.onValue.listen((event) {
      setState(() {
        an3 = event.snapshot.value.toString() as bool;

        answers.add(
          myanswers(a: an3),
        );
      });
    });

    ///an3 end
    ///an4
    _databaseReference = FirebaseDatabase.instance.reference().child('answer4');
    _databaseReference.onValue.listen((event) {
      setState(() {
        an4 = event.snapshot.value.toString() as bool;

        answers.add(
          myanswers(a: an4),
        );
      });
    });

    ///an4 end
    ///an5 end
    _databaseReference = FirebaseDatabase.instance.reference().child('answer5');
    _databaseReference.onValue.listen((event) {
      setState(() {
        an5 = event.snapshot.value.toString() as bool;

        answers.add(
          myanswers(a: an5),
        );
      });
    });

    ///an5 end
    ///an6
    _databaseReference = FirebaseDatabase.instance.reference().child('answer6');
    _databaseReference.onValue.listen((event) {
      setState(() {
        an6 = event.snapshot.value.toString() as bool;

        answers.add(
          myanswers(a: an6),
        );
      });
    });

    ///an6 end
    ///an7
    _databaseReference = FirebaseDatabase.instance.reference().child('answer2');
    _databaseReference.onValue.listen((event) {
      setState(() {
        an2 = event.snapshot.value.toString() as bool;

        answers.add(
          myanswers(a: an2),
        );
      });
    });

    ///an7 end
    ///an8
    _databaseReference = FirebaseDatabase.instance.reference().child('answer8');
    _databaseReference.onValue.listen((event) {
      setState(() {
        an8 = event.snapshot.value.toString() as bool;

        answers.add(
          myanswers(a: an8),
        );
      });
    });

    ///an8 end
    ///an9
    _databaseReference = FirebaseDatabase.instance.reference().child('answer9');
    _databaseReference.onValue.listen((event) {
      setState(() {
        an9 = event.snapshot.value.toString() as bool;

        answers.add(
          myanswers(a: an9),
        );
      });
    });

    ///an9 end
    ///an10
    _databaseReference =
        FirebaseDatabase.instance.reference().child('answer10');
    _databaseReference.onValue.listen((event) {
      setState(() {
        an10 = event.snapshot.value.toString() as bool;

        answers.add(
          myanswers(a: an10),
        );
      });
    });

    ///an10 end

    ///q1
    _databaseReference =
        FirebaseDatabase.instance.reference().child('question1');
    _databaseReference.onValue.listen((event) {
      setState(() {
        qu1 = event.snapshot.value.toString();

        questions.add(
          MyQuestion(q: qu1, btn1: 'True', btn2: 'False'),
        );
      });
    });

    _databaseReference =
        FirebaseDatabase.instance.reference().child('question2');
    _databaseReference.onValue.listen((event) {
      setState(() {
        qu2 = event.snapshot.value.toString();

        questions.add(
          MyQuestion(q: qu2, btn1: 'True', btn2: 'False'),
        );
      });
    });

    ///q3
    _databaseReference =
        FirebaseDatabase.instance.reference().child('question3');
    _databaseReference.onValue.listen((event) {
      setState(() {
        qu3 = event.snapshot.value.toString();

        questions.add(
          MyQuestion(q: qu3, btn1: 'True', btn2: 'False'),
        );
      });
    });

    ///q3 end
    ///q4
    _databaseReference =
        FirebaseDatabase.instance.reference().child('question4');
    _databaseReference.onValue.listen((event) {
      setState(() {
        qu4 = event.snapshot.value.toString();

        questions.add(
          MyQuestion(q: qu4, btn1: 'True', btn2: 'False'),
        );
      });
    });

    ///q4 end
    ///q5
    _databaseReference =
        FirebaseDatabase.instance.reference().child('question5');
    _databaseReference.onValue.listen((event) {
      setState(() {
        qu5 = event.snapshot.value.toString();

        questions.add(
          MyQuestion(q: qu5, btn1: 'True', btn2: 'False'),
        );
      });
    });

    ///q5 end
    ///q6
    _databaseReference =
        FirebaseDatabase.instance.reference().child('question6');
    _databaseReference.onValue.listen((event) {
      setState(() {
        qu6 = event.snapshot.value.toString();

        questions.add(
          MyQuestion(q: qu6, btn1: 'True', btn2: 'False'),
        );
      });
    });

    ///q6 end
    ///q7
    _databaseReference =
        FirebaseDatabase.instance.reference().child('question7');
    _databaseReference.onValue.listen((event) {
      setState(() {
        qu7 = event.snapshot.value.toString();

        questions.add(
          MyQuestion(q: qu7, btn1: 'True', btn2: 'False'),
        );
      });
    });

    ///q7 end
    ///q8
    _databaseReference =
        FirebaseDatabase.instance.reference().child('question8');
    _databaseReference.onValue.listen((event) {
      setState(() {
        qu8 = event.snapshot.value.toString();

        questions.add(
          MyQuestion(q: qu8, btn1: 'True', btn2: 'False'),
        );
      });
    });

    ///q8 end
    ///q9 '
    _databaseReference =
        FirebaseDatabase.instance.reference().child('question9');
    _databaseReference.onValue.listen((event) {
      setState(() {
        qu9 = event.snapshot.value.toString();

        questions.add(
          MyQuestion(q: qu9, btn1: 'True', btn2: 'False'),
        );
      });
    });

    ///q9 end
    ///q10
    _databaseReference =
        FirebaseDatabase.instance.reference().child('question10');
    _databaseReference.onValue.listen((event) {
      setState(() {
        qu10 = event.snapshot.value.toString();

        questions.add(
          MyQuestion(q: qu10, btn1: 'True', btn2: 'False'),
        );
      });
    });

    ///q10 end
  }

  ///q2end

  ///

  ///data fetching end

  ///q list today
  /* List<MyQuestion> questions = [
    MyQuestion(q: '5', a: true, btn1: 'True', btn2: 'False'),
    MyQuestion(q: "උමෙෂ්ට නගිනවද?", a: true, btn1: 'True', btn2: 'False'),
    MyQuestion(
        q: "උමෙෂ් කොට කලිසම් අදින්නෙ නැත්තෙ ඇයි?",
        a: false,
        btn1: 'True',
        btn2: 'False'),
    MyQuestion(
        q: "උමෙෂ්ගෙ සැබැ ආදරය කව්ද?", a: false, btn1: 'True', btn2: 'False'),
    MyQuestion(
        q: "උමෙෂ් හීරුනි එක්ක කතා කරපු පලවෙනි දෙ මොකද්ද?",
        a: false,
        btn1: 'True',
        btn2: 'False'),
    MyQuestion(
        q: "උමෙෂ් හිරුනිට හැමොටම හොරෙන් ගත්ත තෑග්ග?",
        a: true,
        btn1: 'True',
        btn2: 'False '),
    MyQuestion(
        q: "උමෙෂ් වැඩියෙන්ම ආදරෙ කරන කෙනාගෙ උපන්දිනෙ කවද්ද?",
        a: false,
        btn1: 'True',
        btn2: 'False'),
    MyQuestion(
        q: "උමෙෂ් කොල්ලො කපල හොදම යාලුවො එක්ක කෑවෙ මොනාද",
        a: false,
        btn1: 'True',
        btn2: 'False'),
    MyQuestion(
        q: "උමෙෂ් ඇක්සියො එකක් ගත්තෙ", a: false, btn1: 'True', btn2: 'False'),
    MyQuestion(
        q: "මෙ අතරින් උමෙෂ්ගෙ හොදම යාලුවා",
        a: false,
        btn1: 'True',
        btn2: 'False'),
  ];
*/
  ///q list end
  ////questions list

  int cnt = 0;
  int crctcount = 0;

  /// reset method
  void reset() {}

  ///
  //next question function

  void nextq() {
    if (cnt < 9) {
      setState(() {
        cnt++;
      });
    } else {
      alertvox();
      cnt = 0;
      scorekeeper.clear();
    }
  }

  ////correct answer check
  void firstanswerright() {
    bool correctanswer = answers[cnt].questionanswer;
    if (correctanswer == true) {
      tick();
      crctcount++;
    } else {
      cross();
    }
  }
  ////correct answr check end

  void secondanswerright() {
    bool correctanswer = answers[cnt].questionanswer;
    if (correctanswer == false) {
      tick();
      crctcount++;
    } else {
      cross();
    }
  }

  String crct() {
    return crctcount.toString();
  }

  //next question end
  ////tick and cross list
  List<Icon> scorekeeper = [];
  /*
  ////questions list
  List<String> questions = [
    'umeshta naginwda ?',
    'umeshui hiruni yaluid ?',
    'umeshui sandeepai kynne besties lada ?',
  ];

  ////questions list end
  ////firstanswer button list
  List<String> firstbutton = [
    'ow',
    'ow',
    'hariyatama danne na',
    'yaluwo neme sahodarayo',
  ];

  ////first answer list end
  ////second answer button
  List<String> secondbutton = [
    'na',
    'na',
    'thama line ekk ghahana gmn',
    'tharusha thama bestie',
  ];

  ////second answer button end

  ////answers
  List<bool> answers = [
    true,
    false,
    true,
    true,
  ];
  */

  ////answers end

  ///alert box
  void alertvox() {
    Alert(
      context: context,
      title: "Quiz end",
      desc: "You Scored  $crctcount  for the quiz  .",
      buttons: [
        DialogButton(
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            Navigator.pop(context);
            crctcount = 0;
          },
          width: 120,
        )
      ],
    ).show();
  }

  ///alert box end
  ////true function
  void tick() {
    setState(() {
      scorekeeper.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    });
  }

  ////true function end
  ////false function
  void cross() {
    setState(() {
      scorekeeper.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    });
  }
  ////false function end

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            /* Row(
              children: [
                Text(
                  crct(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),*/
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    // '',
                    questions[cnt].questions,

                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: Text(
                    questions[cnt].b1,
                    //'true',
                    //firstbutton[cnt],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    //alertvox();
                    //firstanswerright();
                    nextq();
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  child: Text(
                    //'False',
                    questions[cnt].b2,
                    // secondbutton[cnt],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    //print(an2);
                    //secondanswerright();
                    nextq();
                  },
                ),
              ),
            ),
            //// score keeper
            Row(
              children: scorekeeper,
            )

            ////score keeper end
          ],
        ),
      ),
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
