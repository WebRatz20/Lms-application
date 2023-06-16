class MyQuestion {
  String questions = '';
  //
  String b1 = '';
  String b2 = '';

  MyQuestion(
      {required String q,
      //
      required String btn1,
      required String btn2}) {
    questions = q;
    //questionanswer = a;
    b1 = btn1;
    b2 = btn2;
  }
}

class myanswers {
  bool questionanswer = true;

  myanswers({required bool a}) {
    questionanswer = a;
  }
}
