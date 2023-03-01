
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/getwidget.dart';
import 'package:nurses_mvvm_provider/ui/UIHelper.dart';
import 'package:nurses_mvvm_provider/viewmodels/care_plans_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/medical_history_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/report_viewmodel.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:split_view/split_view.dart';

import '../providers/generalAppInfo.dart';
import '../viewmodels/login_viewmodel.dart';


class ReportScreen extends StatefulWidget {
  static String routeName = '/report';
  const ReportScreen({Key? key}) : super(key: key);

  @override
  ReportScreenState createState() => ReportScreenState();
}


class ReportScreenState extends State<ReportScreen>with SingleTickerProviderStateMixin {



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

    ReportViewModel reportVM = Provider.of<ReportViewModel>(context);
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
                    const Text("Joaquin Sabina"),

                  ],
                ),
                const Text("Reporte de turno"),
                const SizedBox(height: 30.0,),
                SvgPicture.asset('assets/svg/big_file2.svg',
                  width: 150.0,
                  height: 200.0,
                ),















              ],
            ),
          ),
        )
      ),
    );



  }

}