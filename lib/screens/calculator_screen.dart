
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurses_mvvm_provider/ui/UIHelper.dart';
import 'package:nurses_mvvm_provider/viewmodels/calculator_viewmodel.dart';
import 'dart:async';
import 'package:provider/provider.dart';

import '../providers/generalAppInfo.dart';


class CalculatorScreen extends StatefulWidget {
  static String routeName = '/calculator';
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  CalculatorScreenState createState() => CalculatorScreenState();
}


class CalculatorScreenState extends State<CalculatorScreen>with SingleTickerProviderStateMixin {



  @override
  initState() {

    super.initState();
  }

  @override
  void dispose() {

    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    CalculatorViewModel calculatorVM = Provider.of<CalculatorViewModel>(context);
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
                  children: [
                    IconButton(
                      iconSize: 40.0,
                      icon: const Icon(CupertinoIcons.arrow_left),
                      onPressed: () {

                      },
                    ),

                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/svg/calculator.svg'),
                    const SizedBox(width: 10.0,),
                    UIHelper.getText("Calcula tu dosis Mg/Dosis",17.0, null, FontWeight.bold)
                  ],
                ),
                const SizedBox(height: 30.0,),
                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    UIHelper.getText("Peso")
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.60,
                      child: TextField(
                        controller: calculatorVM.usernameController,
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
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 15),

                        ),


                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    UIHelper.getText("Kg",17.0, null, FontWeight.bold)
                  ],
                ),
                const SizedBox(height: 30.0,),
                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    UIHelper.getText("Posología")
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.60,
                      child: TextField(
                        controller: calculatorVM.usernameController,
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
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 15),

                        ),


                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    UIHelper.getText("Mg/Kg/Día")
                  ],
                ),
                const SizedBox(height: 30.0,),
                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    UIHelper.getText("Presentación")
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.60,
                      child: TextField(
                        controller: calculatorVM.usernameController,
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
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 15),

                        ),


                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0,),
                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    Expanded(
                      child: Container(
                        //decoration: BoxDecoration(
                        //  border: Border.all()
                        //),
                        child: UIHelper.getText("A repartir en:")
                      ),
                    ),
                    const SizedBox(width: 30.0,),
                    Expanded(
                      child: Container(
                        //decoration: BoxDecoration(
                        //  border: Border.all()
                        //),
                        child: UIHelper.getText("mg/Unidad")
                      ),
                    ),
                    const SizedBox(width: 20.0,),
                  ],
                ),

                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    Expanded(
                      child: TextField(
                        controller: calculatorVM.usernameController,
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
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 15),

                        ),


                      ),
                    ),
                    const SizedBox(width: 30.0,),
                    Expanded(
                      child: TextField(
                        controller: calculatorVM.usernameController,
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
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 15),

                        ),


                      ),
                    ),
                    const SizedBox(width: 20.0,),
                  ],
                ),
                const SizedBox(height: 30.0,),
                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    Expanded(
                      child: Container(
                        //decoration: BoxDecoration(
                        //  border: Border.all()
                        //),
                        child: UIHelper.getText("No. de mg")
                      ),
                    ),
                    const SizedBox(width: 30.0,),
                    Expanded(
                      child: Container(
                        //decoration: BoxDecoration(
                        //  border: Border.all()
                        //),
                        child: UIHelper.getText("No. de ml")
                      ),
                    ),
                    const SizedBox(width: 20.0,),
                  ],
                ),

                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    Expanded(
                      child: TextField(
                        controller: calculatorVM.usernameController,
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
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 15),

                        ),


                      ),
                    ),
                    const SizedBox(width: 30.0,),
                    Expanded(
                      child: TextField(
                        controller: calculatorVM.usernameController,
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
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 15),

                        ),


                      ),
                    ),
                    const SizedBox(width: 20.0,),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    Expanded(
                      child: Container(
                        //decoration: BoxDecoration(
                        //  border: Border.all()
                        //),
                        child: UIHelper.getText("1 mg = 1000")
                      ),
                    ),
                    const SizedBox(width: 30.0,),
                    Expanded(
                      child: Container(
                        //decoration: BoxDecoration(
                        //  border: Border.all()
                        //),
                        child: UIHelper.getText("1 cmg = 0.001 mg")
                      ),
                    ),
                    const SizedBox(width: 20.0,),
                  ],
                ),
                const SizedBox(height: 30.0),
                Row(

                  children: [

                    Expanded(child: Container()),

                    UIHelper.getElevatedButton(
                      5.0,
                      "Calcular",
                      150.0,
                      45.0,
                      const Color.fromRGBO(56, 91, 216, 1.0),
                      () async{

                      },
                      null,
                      Colors.white,
                    ),

                    const SizedBox(width: 20.0,),
                  ],
                ),
                const SizedBox(height: 20.0,)
              ],
            ),
          ),
        )
      ),
    );

  }

}