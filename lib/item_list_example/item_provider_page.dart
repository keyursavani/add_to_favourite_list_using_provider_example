import 'package:flutter/material.dart';


class ItemProviderPage extends ChangeNotifier{
  List favList = [];

  void addToList(int index){
    favList.add(index);
    notifyListeners();
  }
  void removeToList(int index){
    favList.remove(index);
    notifyListeners();
  }
}