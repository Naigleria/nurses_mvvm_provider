
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nurses_mvvm_provider/services/login_services.dart';
import 'package:nurses_mvvm_provider/ui/UIHelper.dart';
import 'package:progress_dialog_null_safe/progress_dialog_null_safe.dart';


class LoginViewModel extends ChangeNotifier {

  bool passwordVisible=false;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void changePassVisibility(){
    passwordVisible=!passwordVisible;
    notifyListeners();
  }

  Future<dynamic>login(BuildContext context, String username, String password ) async {

    final ProgressDialog pr = ProgressDialog(context,type: ProgressDialogType.normal, isDismissible: false);

    if(username=="" || password==""){
      final snackBar = UIHelper.getSnackBar("Error!", "Correo y contraseña son campos requeridos", ContentType.failure);

      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(snackBar);


      return "email or password empty";
    }
    else{
      pr.style(message: "Iniciando sesión...");
      await pr.show();

      try{
        final data = await LoginWebservice().loginApi(username, password);
        await pr.hide();

        if(data['code']==401){
          final snackBar = UIHelper.getSnackBar("Credenciales inválidas!", "Correo o contraseña incorrectos", ContentType.failure);

          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(snackBar);

        }
        return data["code"];
      }catch(e){

        await pr.hide();
        print("Login viewmodel Exception");
        print(e);
        return "error";
      }
    }

  }










}
