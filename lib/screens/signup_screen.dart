
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:nurses_mvvm_provider/viewmodels/signup_viewmodel.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:split_view/split_view.dart';

import '../providers/generalAppInfo.dart';


class SignupScreen extends StatefulWidget {
  static String routeName = '/signup';
  const SignupScreen({Key? key}) : super(key: key);

  @override
  SignupScreenState createState() => SignupScreenState();
}


class SignupScreenState extends State<SignupScreen>with SingleTickerProviderStateMixin {



  @override
  initState() {
    Provider.of<SignupViewModel>(context, listen: false).usernameController.clear();
    Provider.of<SignupViewModel>(context, listen: false).passwordController.clear();
    super.initState();
  }

  @override
  void dispose() {

    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    SignupViewModel signupVM = Provider.of<SignupViewModel>(context);
    final generalAppInfo = Provider.of<GeneralAppInfo>(context);




    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: AppBar(
            backgroundColor: const Color.fromRGBO(56, 91, 216, 1.0),
          ),
        ),
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Sign Up",
                      style: TextStyle(
                        fontSize: 35.0,

                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const SizedBox(height: 60.0,),
                    const Text("Número de enfermera",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.red
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.66666,

                      child: TextField(
                        controller: signupVM.usernameController,
                        decoration: InputDecoration(
                          //focusedborder cuando se esta focuseando el textfiel y enabledborder cuando no
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.lightBlue, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                        ),
                        textInputAction: TextInputAction.next,

                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    const Text("Nombre(s)",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.red
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.66666,

                      child: TextField(
                        controller: signupVM.usernameController,
                        decoration: InputDecoration(
                          //focusedborder cuando se esta focuseando el textfiel y enabledborder cuando no
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.lightBlue, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                        ),
                        textInputAction: TextInputAction.next,

                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    const Text("Apellidos",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.red
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.66666,

                      child: TextField(
                        controller: signupVM.usernameController,
                        decoration: InputDecoration(
                          //focusedborder cuando se esta focuseando el textfiel y enabledborder cuando no
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.lightBlue, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                        ),
                        textInputAction: TextInputAction.next,

                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    const Text("Número de teléfono",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.red
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.66666,

                      child: TextField(
                        controller: signupVM.usernameController,
                        decoration: InputDecoration(
                          //focusedborder cuando se esta focuseando el textfiel y enabledborder cuando no
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.lightBlue, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                        ),
                        textInputAction: TextInputAction.next,

                      ),
                    ),
                    const SizedBox(height: 20.0,),
                    const Text("Email",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.red
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.66666,

                      child: TextField(
                        controller: signupVM.usernameController,
                        decoration: InputDecoration(
                          //focusedborder cuando se esta focuseando el textfiel y enabledborder cuando no
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.lightBlue, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                        ),
                        textInputAction: TextInputAction.next,

                      ),
                    ),

                    const SizedBox(height: 20.0,),
                    const Text("Password",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.red
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.66666,

                      child: TextField(
                        controller: signupVM.passwordController,
                        decoration: InputDecoration(
                          //focusedborder cuando se esta focuseando el textfiel y enabledborder cuando no
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.lightBlue, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                          suffixIcon: IconButton(
                            iconSize: 40.0,
                            icon: signupVM.passwordVisible
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                              onPressed: (){
                                signupVM.changePassVisibility();

                              }
                          ),
                        ),
                        obscureText: signupVM.passwordVisible
                          ? false
                          : true,
                        textInputAction: TextInputAction.done,
                        onSubmitted: (value) async {

                        },

                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 40.0,),

                SizedBox(
                  width: MediaQuery.of(context).size.width*0.66666,
                  child: CheckboxListTile(
                    activeColor: Colors.black,
                    controlAffinity: ListTileControlAffinity.leading,
                    value: signupVM.acceptedTerms,
                    title: const Text("Acepto terminos de servicios y Política de seguridad",
                      style: TextStyle(
                        fontSize: 13.0
                      ),
                    ),
                    onChanged: (value){
                      signupVM.changeAcceptedTerms(value!);
                    }
                  ),
                ),
                const SizedBox(height: 20.0,),
                //TextButton(
                //  child: Text,
                //  onPressed: () {

                //  },
                //),
                SizedBox(
                  width: 100.0,
                  height: 60.0,
                  child: TextButton(
                    onPressed: (){},
                    child: Text("Continuar",
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Colors.grey)
                        )
                      )
                    )
                  )
                ),
                const SizedBox(height: 20.0,),
                TextButton(

                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/login');
                  },

                  child: const Text("Tienes una cuenta? Inicia sesión",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black
                    ),
                  ),
                ),
                const SizedBox(height: 40.0,),

              ],
            ),
          ),
        )
      ),
    );



  }

}