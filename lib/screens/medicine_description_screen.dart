
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/getwidget.dart';
import 'package:nurses_mvvm_provider/ui/UIHelper.dart';
import 'package:nurses_mvvm_provider/viewmodels/care_plans_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/medical_history_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/medicine_description_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/report_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/supplies_viewmodel.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:split_view/split_view.dart';

import '../providers/generalAppInfo.dart';
import '../viewmodels/login_viewmodel.dart';


class MedicineDescriptionScreen extends StatefulWidget {
  static String routeName = '/medicine-description';
  const MedicineDescriptionScreen({Key? key}) : super(key: key);

  @override
  MedicineDescriptionScreenState createState() => MedicineDescriptionScreenState();
}


class MedicineDescriptionScreenState extends State<MedicineDescriptionScreen>with SingleTickerProviderStateMixin {



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

    MedicineDescriptionViewModel medicineDescriptionVM = Provider.of<MedicineDescriptionViewModel>(context);
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
          child: Column(

            children: [
              Row(
                children: [
                  IconButton(
                    iconSize: 40.0,
                    icon: Icon(CupertinoIcons.arrow_left),
                    onPressed: () {

                    },
                  ),

                ],
              ),
              const SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Insulina",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  )

                ],
              ),
              const SizedBox(height: 20.0,),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        //decoration: BoxDecoration(
                        //  border: Border.all()
                        //),
                        child: Column(
                          children: const [
                            SizedBox(height: 20.0,),
                            Icon(CupertinoIcons.photo_fill,
                              size: 100.0,
                            ),
                            SizedBox(height: 20.0,),
                            Icon(CupertinoIcons.photo_fill,
                              size: 100.0,
                            ),
                          ],
                        )
                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    Expanded(
                      child: Container(
                        //decoration: BoxDecoration(
                        //  border: Border.all()
                        //),
                        child: Column(
                          children: [
                            const SizedBox(height: 20.0,),
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: Flexible(
                                child: Text(medicineDescriptionVM.medicineDescription)
                              ),
                            )
                          ],
                        )
                      ),

                    ),
                  ],
                ),
              )




















            ],
          ),
        )
      ),
    );



  }

}