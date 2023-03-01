
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurses_mvvm_provider/ui/UIHelper.dart';
import 'package:nurses_mvvm_provider/viewmodels/calculator_viewmodel.dart';
import 'dart:async';
import 'package:provider/provider.dart';

import '../providers/generalAppInfo.dart';


class SchedulesScreen extends StatefulWidget {
  static String routeName = '/schedules';
  const SchedulesScreen({Key? key}) : super(key: key);

  @override
  SchedulesScreenState createState() => SchedulesScreenState();
}


class SchedulesScreenState extends State<SchedulesScreen>with SingleTickerProviderStateMixin {



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
                const SizedBox(height: 30.0,),
                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    UIHelper.getText("Tus horarios: ")
                  ],
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    Expanded(
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 7,
                            itemBuilder: (context, index) {
                              return Container(
                                alignment: Alignment.center,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  border: Border.all()
                                ),
                                child: UIHelper.getText(
                                  index==0? "09:00 - 10:00":
                                  index==1? "11:00 - 12:00":
                                  index==2? "13:00 - 14:00":
                                  index==3? "14:00 - 15:00":
                                  index==4? "16:00 - 17:00":
                                  index==5? "18:00 - 19:00": "20:00 - 21:00"
                                )
                              );
                            },
                          )
                        ],
                      ),

                    ),
                    Expanded(
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              double height = index==0? 320.0 : 80.0;
                              return
                              Container(

                                height: height,
                                decoration: BoxDecoration(
                                  border: Border.all()
                                ),
                                child: index==0?
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    UIHelper.getText("ENFERMERA PATRICIA"),
                                    UIHelper.getText("ENFERMERA MARIA"),
                                    UIHelper.getText("ENFERMERA ROCIO"),
                                  ],
                                ):UIHelper.getText("")
                              );
                            },
                          )
                        ],
                      ),

                    ),
                    const SizedBox(width: 20.0,),

                  ],
                ),

              ],
            ),
          ),
        )
      ),
    );

  }

}