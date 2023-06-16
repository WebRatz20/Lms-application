import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:the_lms_try/lec_dashboard.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  FirebaseDatabase database = FirebaseDatabase.instance;

  late String timetabledate;
  late String timetabletime1;
  late String timetabletime2;
  late String timetabletime3;
  late String timetabletime4;
  late String timetablemodule1;
  late String timetablemodule2;
  late String timetablemodule3;
  late String timetablemoodule4;
  TextEditingController dateTEC = TextEditingController();
  TextEditingController time1TEC = TextEditingController();
  TextEditingController time2TEC = TextEditingController();
  TextEditingController time3TEC = TextEditingController();
  TextEditingController time4TEC = TextEditingController();
  TextEditingController module1TEC = TextEditingController();
  TextEditingController module2TEC = TextEditingController();
  TextEditingController module3TEC = TextEditingController();
  TextEditingController module4TEC = TextEditingController();

  late DatabaseReference timetabledateref = FirebaseDatabase.instance.ref();
  late DatabaseReference tabletime1 = FirebaseDatabase.instance.ref();
  late DatabaseReference tabletime2 = FirebaseDatabase.instance.ref();
  late DatabaseReference tabletime3 = FirebaseDatabase.instance.ref();
  late DatabaseReference tabletime4 = FirebaseDatabase.instance.ref();
  late DatabaseReference tablemod1 = FirebaseDatabase.instance.ref();
  late DatabaseReference tablemod2 = FirebaseDatabase.instance.ref();
  late DatabaseReference tablemod3 = FirebaseDatabase.instance.ref();
  late DatabaseReference tablemod4 = FirebaseDatabase.instance.ref();

  @override
  void initState() {
    super.initState();
    timetabledateref = FirebaseDatabase.instance.ref().child('timetabledata');
    tabletime1 = FirebaseDatabase.instance.ref().child('tabletime1');
    tabletime2 = FirebaseDatabase.instance.ref().child('tabletime2');
    tabletime3 = FirebaseDatabase.instance.ref().child('tabletime3');
    tabletime4 = FirebaseDatabase.instance.ref().child('tabletime4');
    tablemod1 = FirebaseDatabase.instance.ref().child('tablemodule1');
    tablemod2 = FirebaseDatabase.instance.ref().child('tablemodule2');
    tablemod3 = FirebaseDatabase.instance.ref().child('tablemodule3');
    tablemod4 = FirebaseDatabase.instance.ref().child('tablemodule4');
  }

  Future<void> timetabledataset(String dte) async {
    await timetabledateref.set(dte);
  }

  ///first
  Future<void> firsttimeslot(String tm, String md) async {
    await tabletime1.set(tm);
    await tablemod1.set(md);
  }

  ///first end
  ///second
  Future<void> secondtimeslot(String tm, String md) async {
    await tabletime2.set(tm);
    await tablemod2.set(md);
  }

  ///second end
  ///third
  Future<void> thirdtimeslot(String tm, String md) async {
    await tabletime3.set(tm);
    await tablemod3.set(md);
  }

  ///third end
  ///fourth
  Future<void> fourthtimeslot(String tm, String md) async {
    await tabletime4.set(tm);
    await tablemod4.set(md);
  }

  ///fourth end

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
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
              'Update Time Table',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color(0xFF19589D),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: /* TextFormField(
                          controller: dateTEC,
                          onChanged: (value) {
                            date = value;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.date_range,
                            ),
                            labelText: 'Date',
                            border: OutlineInputBorder(),
                          ),
                        ),*/
                            TextField(
                          controller: dateTEC,
                          decoration: const InputDecoration(
                            hintText: 'Date',
                          ),
                          onChanged: (value) {
                            timetabledate = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          child: Text('Send'),
                          onPressed: () {
                            timetabledataset(timetabledate);
                            dateTEC.clear();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: time1TEC,
                          decoration: const InputDecoration(
                            hintText: 'Time',
                          ),
                          onChanged: (value) {
                            timetabletime1 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: module1TEC,
                          decoration: const InputDecoration(
                            hintText: 'Module Name',
                          ),
                          onChanged: (value) {
                            timetablemodule1 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: const Text('Send'),
                          onPressed: () {
                            firsttimeslot(timetabletime1, timetablemodule1);
                            module1TEC.clear();
                            time1TEC.clear();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: time2TEC,
                          decoration: const InputDecoration(
                            hintText: 'Time',
                          ),
                          onChanged: (value) {
                            timetabletime2 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: module2TEC,
                          decoration: const InputDecoration(
                            hintText: 'Module Name',
                          ),
                          onChanged: (value) {
                            timetablemodule2 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: const Text('Send'),
                          onPressed: () {
                            secondtimeslot(timetabletime2, timetablemodule2);
                            module2TEC.clear();
                            time2TEC.clear();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: time3TEC,
                          decoration: const InputDecoration(
                            hintText: 'Time',
                          ),
                          onChanged: (value) {
                            timetabletime3 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: module3TEC,
                          decoration: const InputDecoration(
                            hintText: 'Module Name',
                          ),
                          onChanged: (value) {
                            timetablemodule3 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: const Text('Send'),
                          onPressed: () {
                            thirdtimeslot(timetabletime3, timetablemodule3);
                            module3TEC.clear();
                            time3TEC.clear();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: time4TEC,
                          decoration: const InputDecoration(
                            hintText: 'Time',
                          ),
                          onChanged: (value) {
                            timetabletime4 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          controller: module4TEC,
                          decoration: const InputDecoration(
                            hintText: 'Module Name',
                          ),
                          onChanged: (value) {
                            timetablemoodule4 = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          child: const Text('Send'),
                          onPressed: () {
                            fourthtimeslot(timetabletime4, timetablemoodule4);
                            module4TEC.clear();
                            time4TEC.clear();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  child: const Text('Clear'),
                  onPressed: () {
                    setState(() {
                      dateTEC.clear();
                      time1TEC.clear();
                      time2TEC.clear();
                      time3TEC.clear();
                      time4TEC.clear();
                      module1TEC.clear();
                      module2TEC.clear();
                      module3TEC.clear();
                      module4TEC.clear();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
