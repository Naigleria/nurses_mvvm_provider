
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/getwidget.dart';
import 'package:nurses_mvvm_provider/ui/UIHelper.dart';
import 'package:nurses_mvvm_provider/viewmodels/care_plans_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/medical_history_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/report_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/supplies_viewmodel.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:split_view/split_view.dart';

import '../providers/generalAppInfo.dart';
import '../viewmodels/login_viewmodel.dart';


class SuppliesScreen extends StatefulWidget {
  static String routeName = '/supplies';
  const SuppliesScreen({Key? key}) : super(key: key);

  @override
  SuppliesScreenState createState() => SuppliesScreenState();
}


class SuppliesScreenState extends State<SuppliesScreen>with SingleTickerProviderStateMixin {



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

    SuppliesViewModel suppliesVM = Provider.of<SuppliesViewModel>(context);
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
                      icon: Icon(CupertinoIcons.arrow_left),
                      onPressed: () {

                      },
                    ),

                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  children: [
                    const SizedBox(width: 40.0,),
                    SvgPicture.asset('assets/svg/plus_hand.svg'),
                    const SizedBox(width: 70.0,),
                    const Text("Pide tus insumos"),

                  ],
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: [
                    const SizedBox(width: 40.0,),
                    Expanded(
                      child: TextField(
                        controller: suppliesVM.usernameController,
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
                          hintText: "Buscar",
                          prefixIcon: const Icon(CupertinoIcons.search)
                        ),


                      ),
                    ),
                    const SizedBox(width: 40.0,),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  children: [
                    const SizedBox(width: 60.0,),
                    SvgPicture.asset('assets/svg/band_aid.svg'),
                    const SizedBox(width: 25.0,),
                    GFCheckbox(
                      size: GFSize.SMALL,
                      activeBgColor: Colors.black,
                      onChanged: (value) {

                      },
                      value: true,
                    ),
                    Expanded(child: Container()),
                    SvgPicture.asset('assets/svg/two_pills.svg'),
                    const SizedBox(width: 60.0,),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  children: [
                    const SizedBox(width: 60.0,),
                    SvgPicture.asset('assets/svg/crutch.svg'),
                    const SizedBox(width: 20.0,),
                    GFCheckbox(
                      size: GFSize.SMALL,
                      activeBgColor: Colors.black,
                      onChanged: (value) {

                      },
                      value: true,
                    ),
                    Expanded(child: Container()),
                    SvgPicture.asset('assets/svg/facemask.svg'),
                    const SizedBox(width: 60.0,),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  children: [
                    const SizedBox(width: 60.0,),
                    SvgPicture.asset('assets/svg/medicine_pills.svg'),
                    const SizedBox(width: 27.0,),
                    GFCheckbox(
                      size: GFSize.SMALL,
                      activeBgColor: Colors.black,
                      onChanged: (value) {

                      },
                      value: true,
                    ),
                    Expanded(child: Container()),
                    SvgPicture.asset('assets/svg/syringe.svg'),
                    const SizedBox(width: 60.0,),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  children: [
                    const SizedBox(width: 60.0,),
                    SvgPicture.asset('assets/svg/stethoscope.svg'),

                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  children: [
                    const SizedBox(width: 40.0,),
                    Expanded(
                      child: TextField(
                        controller: suppliesVM.usernameController,
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
                          hintText: "Fármaco",
                          prefixIcon: const Icon(CupertinoIcons.search)
                        ),


                      ),
                    ),
                    const SizedBox(width: 40.0,),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  children: const [
                    SizedBox(width: 60.0,),
                    Icon(CupertinoIcons.photo_fill,
                      size: 40.0,
                    ),
                    SizedBox(width: 20.0,),
                    Text("Ibuprofeno")
                  ],
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: const [
                    SizedBox(width: 60.0,),
                    Icon(CupertinoIcons.photo_fill,
                      size: 40.0,
                    ),
                    SizedBox(width: 20.0,),
                    Text("Insulina")
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