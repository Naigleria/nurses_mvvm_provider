
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignupViewModel extends ChangeNotifier {

  bool passwordVisible=false;
  bool acceptedTerms=false;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void changePassVisibility(){
    passwordVisible=!passwordVisible;
    notifyListeners();
  }

  void changeAcceptedTerms(bool value){
    acceptedTerms=value;
    notifyListeners();
  }












}
