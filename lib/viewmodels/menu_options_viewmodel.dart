
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MenuOptionsViewModel extends ChangeNotifier {

  bool passwordVisible=false;


  void changePassVisibility(){
    passwordVisible=!passwordVisible;
    notifyListeners();
  }












}
