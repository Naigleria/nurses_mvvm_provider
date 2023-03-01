
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PatientsListViewModel extends ChangeNotifier {

  bool passwordVisible=false;


  void changePassVisibility(){
    passwordVisible=!passwordVisible;
    notifyListeners();
  }












}
