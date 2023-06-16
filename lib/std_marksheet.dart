import 'package:flutter/material.dart';
import 'package:the_lms_try/std_dashboard.dart';
import 'package:firebase_database/firebase_database.dart';

class marksheet extends StatefulWidget {
  @override
  State<marksheet> createState() => _marksheetState();
}

class _marksheetState extends State<marksheet> {
  late DatabaseReference _databaseReference;
  String modulename = 'Module Name';
  String student1 = 'Student1';
  String student2 = 'Student1';
  String student3 = 'Student1';
  String student4 = 'Student1';
  String student5 = 'Student1';
  String student6 = 'Student1';
  String student7 = 'Student1';
  String student8 = 'Student1';
  String student9 = 'Student1';
  String student10 = 'Student1';

  String mks1 = ' ';
  String mks2 = ' ';
  String mks3 = ' ';
  String mks4 = ' ';
  String mks5 = ' ';
  String mks6 = ' ';
  String mks7 = ' ';
  String mks8 = ' ';
  String mks9 = ' ';
  String mks10 = ' ';

  ///init
  @override
  void initState() {
    super.initState();

    ///module name
    _databaseReference =
        FirebaseDatabase.instance.reference().child('modulename');
    _databaseReference.onValue.listen((event) {
      setState(() {
        modulename = event.snapshot.value.toString();
      });
    });

    ///module name end
    ///st1
    _databaseReference =
        FirebaseDatabase.instance.reference().child('student1');
    _databaseReference.onValue.listen((event) {
      setState(() {
        student1 = event.snapshot.value.toString();
      });
    });

    ///st1 end
    ///st2
    _databaseReference =
        FirebaseDatabase.instance.reference().child('student2');
    _databaseReference.onValue.listen((event) {
      setState(() {
        student2 = event.snapshot.value.toString();
      });
    });

    ///st2 end
    ///st3
    _databaseReference =
        FirebaseDatabase.instance.reference().child('student3');
    _databaseReference.onValue.listen((event) {
      setState(() {
        student3 = event.snapshot.value.toString();
      });
    });

    ///st3 end
    ///st4
    _databaseReference =
        FirebaseDatabase.instance.reference().child('student4');
    _databaseReference.onValue.listen((event) {
      setState(() {
        student4 = event.snapshot.value.toString();
      });
    });

    ///st4 end
    ///st5
    _databaseReference =
        FirebaseDatabase.instance.reference().child('student5');
    _databaseReference.onValue.listen((event) {
      setState(() {
        student5 = event.snapshot.value.toString();
      });
    });

    ///st5 end
    ///st6
    _databaseReference =
        FirebaseDatabase.instance.reference().child('student6');
    _databaseReference.onValue.listen((event) {
      setState(() {
        student6 = event.snapshot.value.toString();
      });
    });

    ///st6 end
    ///st7
    _databaseReference =
        FirebaseDatabase.instance.reference().child('student7');
    _databaseReference.onValue.listen((event) {
      setState(() {
        student7 = event.snapshot.value.toString();
      });
    });

    ///st7 end
    ///st8
    _databaseReference =
        FirebaseDatabase.instance.reference().child('student8');
    _databaseReference.onValue.listen((event) {
      setState(() {
        student8 = event.snapshot.value.toString();
      });
    });

    ///st8 end
    ///st9
    _databaseReference =
        FirebaseDatabase.instance.reference().child('student9');
    _databaseReference.onValue.listen((event) {
      setState(() {
        student9 = event.snapshot.value.toString();
      });
    });

    ///st9 end
    ///s10
    _databaseReference =
        FirebaseDatabase.instance.reference().child('student10');
    _databaseReference.onValue.listen((event) {
      setState(() {
        student10 = event.snapshot.value.toString();
      });
    });

    ///s10 end
    ///marks1
    _databaseReference = FirebaseDatabase.instance.reference().child('mark1');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mks1 = event.snapshot.value.toString();
      });
    });

    ///m1 end
    ///m2
    _databaseReference = FirebaseDatabase.instance.reference().child('mark2');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mks2 = event.snapshot.value.toString();
      });
    });

    ///m2 end
    ///m3
    _databaseReference = FirebaseDatabase.instance.reference().child('mark3');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mks3 = event.snapshot.value.toString();
      });
    });

    ///m3 end
    ///m4
    _databaseReference = FirebaseDatabase.instance.reference().child('mark4');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mks4 = event.snapshot.value.toString();
      });
    });

    ///m4 end
    ///m5
    _databaseReference = FirebaseDatabase.instance.reference().child('mark5');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mks5 = event.snapshot.value.toString();
      });
    });

    ///m5 end
    ///m6
    _databaseReference = FirebaseDatabase.instance.reference().child('mark6');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mks6 = event.snapshot.value.toString();
      });
    });

    ///m6 en
    ///m7
    _databaseReference = FirebaseDatabase.instance.reference().child('mark7');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mks7 = event.snapshot.value.toString();
      });
    });

    ///m7 end
    ///m8
    _databaseReference = FirebaseDatabase.instance.reference().child('mark8');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mks8 = event.snapshot.value.toString();
      });
    });

    ///m8 end
    ///m9
    _databaseReference = FirebaseDatabase.instance.reference().child('mark9');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mks9 = event.snapshot.value.toString();
      });
    });

    ///m9 end
    ///m10
    _databaseReference = FirebaseDatabase.instance.reference().child('mark10');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mks10 = event.snapshot.value.toString();
      });
    });

    ///m10 end
  }

  ///init end

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => st_dashboard()),
            );
          },
        ),
        title: Text(
          'Marks',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF19589D),
      ),
      body: SafeArea(
        child: Column(
          children: [
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
                        readOnly: true,
                        enabled: false,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          labelText: '                  $modulename',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22.0,
            ),
            Expanded(
                child: Column(
              children: <Widget>[
                ///first
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2, // Set the width of the SizedBox to 300 pixels
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          enabled: false,
                          readOnly: true,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.boy,
                            ),
                            labelText: student1,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
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
                          readOnly: true,
                          enabled: false,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.score,
                            ),
                            labelText: mks1,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                ///first end
                ///2
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2, // Set the width of the SizedBox to 300 pixels
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          enabled: false,
                          readOnly: true,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.boy,
                            ),
                            labelText: student2,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
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
                          readOnly: true,
                          enabled: false,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.score,
                            ),
                            labelText: mks2,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                ///2 end
                ///3
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2, // Set the width of the SizedBox to 300 pixels
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          enabled: false,
                          readOnly: true,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.boy,
                            ),
                            labelText: student3,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
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
                          readOnly: true,
                          enabled: false,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.score,
                            ),
                            labelText: mks2,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                ///3 end
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
                        child: TextField(
                          enabled: false,
                          readOnly: true,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.boy,
                            ),
                            labelText: student4,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
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
                          readOnly: true,
                          enabled: false,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.score,
                            ),
                            labelText: mks4,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                ///4end
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
                        child: TextField(
                          enabled: false,
                          readOnly: true,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.boy,
                            ),
                            labelText: student5,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
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
                          readOnly: true,
                          enabled: false,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.score,
                            ),
                            labelText: mks5,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
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
                        child: TextField(
                          enabled: false,
                          readOnly: true,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.boy,
                            ),
                            labelText: student6,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
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
                          readOnly: true,
                          enabled: false,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.score,
                            ),
                            labelText: mks6,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                ///6 end
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
                        child: TextField(
                          enabled: false,
                          readOnly: true,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.boy,
                            ),
                            labelText: student7,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
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
                          readOnly: true,
                          enabled: false,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.score,
                            ),
                            labelText: mks7,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
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
                        child: TextField(
                          enabled: false,
                          readOnly: true,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.boy,
                            ),
                            labelText: student8,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
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
                          readOnly: true,
                          enabled: false,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.score,
                            ),
                            labelText: mks8,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
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
                        child: TextField(
                          enabled: false,
                          readOnly: true,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.boy,
                            ),
                            labelText: student9,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
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
                          readOnly: true,
                          enabled: false,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.score,
                            ),
                            labelText: mks9,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                ///9 ebd
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
                        child: TextField(
                          enabled: false,
                          readOnly: true,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.boy,
                            ),
                            labelText: student10,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
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
                          readOnly: true,
                          enabled: false,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.score,
                            ),
                            labelText: mks10,
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                ///10end
              ],
            )),
          ],
        ),
      ),
    );
  }
}
