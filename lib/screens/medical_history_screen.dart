
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/getwidget.dart';
import 'package:nurses_mvvm_provider/ui/UIHelper.dart';
import 'package:nurses_mvvm_provider/viewmodels/care_plans_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/medical_history_viewmodel.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:split_view/split_view.dart';

import '../providers/generalAppInfo.dart';
import '../viewmodels/login_viewmodel.dart';


class MedicalHistoryScreen extends StatefulWidget {
  static String routeName = '/medical-history';
  const MedicalHistoryScreen({Key? key}) : super(key: key);

  @override
  MedicalHistoryScreenState createState() => MedicalHistoryScreenState();
}


class MedicalHistoryScreenState extends State<MedicalHistoryScreen>with SingleTickerProviderStateMixin {



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

    MedicalHistoryViewModel medicalHistoryVM = Provider.of<MedicalHistoryViewModel>(context);
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
                const SizedBox(height: 80.0,),
                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    SvgPicture.asset('assets/svg/rounded_user.svg'),
                    SizedBox(width: 70.0,),
                    const Text("Juan C Valles"),

                  ],
                ),
                const Text("Historial Clínico"),
                const SizedBox(height: 30.0,),
                SvgPicture.asset('assets/svg/big_file1.svg',
                  width: 150.0,
                  height: 200.0,
                ),
                const SizedBox(height: 20.0,),
                const Text("Signos vitales"),
                const SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    SvgPicture.asset('assets/svg/bar_graph.svg'),
                    SvgPicture.asset('assets/svg/medical_heart.svg'),
                    SvgPicture.asset('assets/svg/medicine_pills.svg'),

                  ],
                )














              ],
            ),
          ),
        )
      ),
    );



  }

}