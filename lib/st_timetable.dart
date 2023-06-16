import 'package:flutter/material.dart';
import 'package:the_lms_try/std_dashboard.dart';
import 'package:firebase_database/firebase_database.dart';

class st_timetable extends StatefulWidget {
  const st_timetable({Key? key}) : super(key: key);

  @override
  State<st_timetable> createState() => _st_timetableState();
}

class _st_timetableState extends State<st_timetable> {
  late DatabaseReference _databaseReference;
  String dte = "YYYY-MM-DD";
  String mod1 = "";
  String mod2 = "";
  String mod3 = "";
  String mod4 = "";
  String t1 = "";
  String t2 = "";
  String t3 = "";
  String t4 = "";

  ///init
  @override
  void initState() {
    super.initState();

    ///date
    _databaseReference =
        FirebaseDatabase.instance.reference().child('timetabledata');
    _databaseReference.onValue.listen((event) {
      setState(() {
        dte = event.snapshot.value.toString();
      });
    });

    ///date end

    ///mod1
    _databaseReference =
        FirebaseDatabase.instance.reference().child('tablemodule1');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mod1 = event.snapshot.value.toString();
      });
    });

    ///mod1 end
    ///mod2
    _databaseReference =
        FirebaseDatabase.instance.reference().child('tablemodule2');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mod2 = event.snapshot.value.toString();
      });
    });

    ///mod2 end
    ///mod 3
    _databaseReference =
        FirebaseDatabase.instance.reference().child('tablemodule3');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mod3 = event.snapshot.value.toString();
      });
    });

    ///mod 3 end
    ///mod 4
    _databaseReference =
        FirebaseDatabase.instance.reference().child('tablemodule4');
    _databaseReference.onValue.listen((event) {
      setState(() {
        mod4 = event.snapshot.value.toString();
      });
    });

    ///mod 4 end
    ///t1
    _databaseReference =
        FirebaseDatabase.instance.reference().child('tabletime1');
    _databaseReference.onValue.listen((event) {
      setState(() {
        t1 = event.snapshot.value.toString();
      });
    });

    ///t1 end
    ///t2
    _databaseReference =
        FirebaseDatabase.instance.reference().child('tabletime2');
    _databaseReference.onValue.listen((event) {
      setState(() {
        t2 = event.snapshot.value.toString();
      });
    });

    ///t2 end
    ///t3
    _databaseReference =
        FirebaseDatabase.instance.reference().child('tabletime3');
    _databaseReference.onValue.listen((event) {
      setState(() {
        t3 = event.snapshot.value.toString();
      });
    });

    ///t3 end
    ///t4
    _databaseReference =
        FirebaseDatabase.instance.reference().child('tabletime4');
    _databaseReference.onValue.listen((event) {
      setState(() {
        t4 = event.snapshot.value.toString();
      });
    });

    ///t4 end
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
          'Time Table',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF19589D),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
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
                          labelText: '    $dte',
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
              height: 10.0,
            ),

            ///first mod
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1, // Set the width of the SizedBox to 300 pixels
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
                          Icons.subject,
                        ),
                        labelText: mod1,
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
                          Icons.timer,
                        ),
                        labelText: t1,
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

            ///first mod end
            ///second mod
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1, // Set the width of the SizedBox to 300 pixels
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
                          Icons.subject,
                        ),
                        labelText: mod2,
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
                          Icons.timer,
                        ),
                        labelText: t2,
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

            ///second mod end
            ///third mod
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1, // Set the width of the SizedBox to 300 pixels
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
                          Icons.subject,
                        ),
                        labelText: mod3,
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
                          Icons.timer,
                        ),
                        labelText: t3,
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

            ///third mod end
            ///fourth mod
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1, // Set the width of the SizedBox to 300 pixels
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
                          Icons.subject,
                        ),
                        labelText: mod4,
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
                          Icons.timer,
                        ),
                        labelText: t4,
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

            ///fourth mod end
          ],
        ),
      ),
    );
  }
}
