import 'package:flutter/cupertino.dart';

class ChangeCourse extends ChangeNotifier{
  String subject = "";
  String get sub => subject;
  void changeSubject(String newSub){
    subject = newSub ;
    notifyListeners();
  }
}