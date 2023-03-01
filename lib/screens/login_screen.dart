
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:split_view/split_view.dart';

import '../providers/generalAppInfo.dart';
import '../viewmodels/login_viewmodel.dart';


class LoginScreen extends StatefulWidget {
  static String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}


class LoginScreenState extends State<LoginScreen>with SingleTickerProviderStateMixin {



  @override
  initState() {
    Provider.of<LoginViewModel>(context, listen: false).usernameController.clear();
    Provider.of<LoginViewModel>(context, listen: false).passwordController.clear();
    super.initState();
  }

  @override
  void dispose() {

    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    LoginViewModel loginVM = Provider.of<LoginViewModel>(context);
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
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/svg/nurse.svg'),
                  const Text("Flurens",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 80.0,),
                  const Text("Hola! Encantada de verte de nuevo!",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  const SizedBox(height: 40.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          controller: loginVM.usernameController,
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
                          controller: loginVM.passwordController,
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
                              icon: loginVM.passwordVisible
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                                onPressed: (){
                                  loginVM.changePassVisibility();

                                }
                            ),
                          ),
                          obscureText: loginVM.passwordVisible
                            ? false
                            : true,
                          textInputAction: TextInputAction.done,
                          onSubmitted: (value)async{
                            var result = await loginVM.login(context, loginVM.usernameController.text, loginVM.passwordController.text) ;
                            print(result);
                            if(result==202){
                              if(!mounted)return;
                              Navigator.pushReplacementNamed(context, '/menu-options');
                            }
                          },

                        ),
                      ),

                    ],
                  ),
                  const SizedBox(height: 40.0,),
                  TextButton(

                    onPressed: (){},
                    child: const Text("Olvidó su contraseña?",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0,),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      TextButton(

                        onPressed: (){
                          Navigator.pushReplacementNamed(context, '/signup');
                        },
                        child: const Text("Sign Up",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.red
                          ),
                        ),
                      ),
                      const SizedBox(width: 40.0,),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );



  }

}