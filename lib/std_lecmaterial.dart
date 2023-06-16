import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'constants.dart';
import 'package:firebase_storage/firebase_storage.dart';

///
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:path_provider/path_provider.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

///

late User loggedinuser;

class std_slides extends StatefulWidget {
  static String id = 'chat_screen';
  @override
  _std_slidesState createState() => _std_slidesState();
}

class _std_slidesState extends State<std_slides> {
  final messageTextController = TextEditingController();

  late var sentuser;
  final _firestore = FirebaseFirestore.instance;
  final storage = FirebaseStorage.instance;
  //final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;
  //going to cutout loged in user
  //late User loggedinuser;
  late String messagetext;
  late String gemmurl;

  ///for image uploading
  String? fileName;
  String? downloadURL;

  File? _image;
  Image myIcon = Image.asset('assets/ad.png');
  File? _file;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      ///meke tyyna hamahuttama kapapan
      final ref = storage.ref().child('images/${DateTime.now().toString()}');
      final uploadTask = ref.putFile(File(pickedImage.path));
      final snapshot = await uploadTask.whenComplete(() {});
      final imageUrl = await snapshot.ref.getDownloadURL();
      gemmurl = imageUrl;
      _image = File(pickedImage.path);

      setState(() {
        myIcon = Image.asset('pickedImage');
      });
    }
  }

/*
  Future<void> pickfile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      String? path = result.files.single.path;
      if (path != null) {
        // Now you can use the file variable to upload the file to Firebase storage
      }
    } else {
      // User canceled the picker
    }
  }*/
  Future<void> pickfile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      String? path = result.files.single.path;
      if (path != null) {
        final ref = storage.ref().child('files/${DateTime.now().toString()}');
        final uploadTask = ref.putFile(File(path));
        final snapshot = await uploadTask.whenComplete(() {});
        final fileUrl = await snapshot.ref.getDownloadURL();
        gemmurl = fileUrl;
        setState(() {
          // set the icon to indicate that a file has been picked
          myIcon = Icon(Icons.insert_drive_file) as Image;
        });
      }
    } else {
      // User canceled the picker
    }
  }

  ///image uploading end
  @override
  void initState() {
    super.initState();
    getcurrentuser();
  }

  void getcurrentuser() async {
    try {
      // final user = await _auth.currentUser();
      ///yata line eka chatgpt code ekk meka gatte uda line eke error ekk ena hinda hrytama scene eka terenne na
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        loggedinuser = user;
        print(loggedinuser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  ///msg streaming method begin
  ///with the chatgpt code this works

  void messagesstream() async {
    await for (var snapeshot
        in _firestore.collection('slides').orderBy('timestamp').snapshots()) {
      for (var doc in snapeshot.docs) {
        var data = doc.data();
      }
    }
  }

  ///msg streaming method end

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
        leading: null,
        actions: <Widget>[],
        title: Text(
          '   Lecture Material',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF19589D),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ///chatgpt code
            ///this is workingg
            StreamBuilder<QuerySnapshot>(
              stream: _firestore
                  .collection('slides')
                  .orderBy('timestamp')
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final messages = snapshot.data!.docs.reversed;

                  ///my working code end

                  ///chat gpt code begin
                  //final messages = snapshot.data!.docs.reversed;
                  List<messagebuble> messageBubbles = [];
                  for (var message in messages) {
                    final posturl = message['url'];
                    final messageSender = message['sender'];
                    //   final time = message['timestamp'].toString();
                    final currentUser = loggedinuser.email;

                    final messageBubble = messagebuble(
                      msender: messageSender,
                      postlink: posturl,
                      isme: currentUser == messageSender,
                      //time: time,
                    );

                    messageBubbles.add(messageBubble);
                  }

                  ///chatgpt code end

                  return Expanded(
                    child: ListView(
                      reverse: true,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20.0),
                      children: messageBubbles,
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text('Error fetching messages');
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),

            ///chat gpt code end

            /* Container(
              decoration: kMessageContainerDecoration,
              //child:

              ///chat gpt
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Post your Lecture Material here',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Spacer(),
                      Expanded(
                          child: InkWell(
                        onTap: () async {
                          await pickfile();
                          if (_file != null) {
                            final ref = storage
                                .ref()
                                .child('files/${DateTime.now().toString()}');
                            final uploadTask = ref.putFile(_file!);
                            final snapshot =
                                await uploadTask.whenComplete(() {});
                            final fileUrl = await snapshot.ref.getDownloadURL();
                            setState(() {
                              gemmurl = fileUrl;
                            });
                          }
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.deepPurpleAccent,
                          radius: 50.0,
                          child: _file != null
                              ? Icon(
                                  Icons.insert_drive_file,
                                  size: 40.0,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.file_copy_sharp,
                                  size: 40.0,
                                  color: Colors.white,
                                ),
                        ),
                      )),
                      /* Expanded(
                        child: InkWell(
                          onTap: _pickImage,
                          child: CircleAvatar(
                            backgroundColor: Colors.deepPurpleAccent,
                            radius: 50.0,
                            backgroundImage:
                                _image != null ? FileImage(_image!) : null,
                            child: _image == null
                                ? Icon(
                                    Icons.image,
                                    size: 40.0,
                                    color: Colors.white,
                                  )
                                : Image.file(_image!),
                          ),
                        ),
                      ),*/
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          _firestore.collection('slides').add({
                            'url': gemmurl,
                            'sender': loggedinuser.email,
                            'timestamp': FieldValue.serverTimestamp(),
                          });
                          setState(() {
                            _image = null;
                          });
                        },
                        child: Text(
                          'Post',
                          style: kSendButtonTextStyle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              ///chat gpt end

              /*

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: InkWell(
                    onTap: _pickImage,
                    child: CircleAvatar(
                      backgroundColor: Colors.deepPurpleAccent,
                      radius: 50.0,
                      backgroundImage:
                          _image != null ? FileImage(_image!) : null,
                      child: /*Image(
                            image: AssetImage('images/ad.png'),
                          ),*/
                          _image == null
                              ? Image.asset('images/ad.png')
                              : Image.file(_image!),

                      /*IconButton(
                              icon: myIcon,
                              onPressed: null,
                            ),*/
                    ),
                  )),
                  TextButton(
                    onPressed: () {
                      _firestore.collection('announcement').add({
                        'url': gemmurl,
                        'sender': loggedinuser.email,
                        'timestamp': FieldValue.serverTimestamp(),
                      });
                      setState(() {
                        _image =
                            null; // Set the _image variable to null to remove the image
                      });

                      //Implement send functionality.
                    },
                    child: Text(
                      'Post',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),*/
            ),*/
          ],
        ),
      ),
    );
  }
}

class messagebuble extends StatelessWidget {
  messagebuble({
    required this.postlink,
    required this.msender,
    required this.isme,
  });
  final String msender;
  final String postlink;
  final bool isme;
  //final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isme ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            msender,
            style: TextStyle(
              fontSize: 11.0,
              color: Colors.black54,
            ),
          ),
          Material(
            elevation: 5.0,
            borderRadius: isme
                ? BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0))
                : BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)),
            color: isme ? kSenderChatBubbleColor : kReceiverChatBubbleColor,
            child: Container(
              //padding: EdgeInsets.only(left: 20),
              height: 150,
              // width: double.infinity,
              color: Color(0xDBD6EFFF),
              child: Text('$postlink'),
            ),
          ),
        ],
      ),
    );
  }
}
