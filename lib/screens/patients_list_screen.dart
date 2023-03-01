
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurses_mvvm_provider/viewmodels/patients_list_viewmodel.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:split_view/split_view.dart';

import '../providers/generalAppInfo.dart';
import '../viewmodels/login_viewmodel.dart';


class PatientsListScreen extends StatefulWidget {
  static String routeName = '/patients-list';
  const PatientsListScreen({Key? key}) : super(key: key);

  @override
  PatientsListScreenState createState() => PatientsListScreenState();
}


class PatientsListScreenState extends State<PatientsListScreen>with SingleTickerProviderStateMixin {



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

    PatientsListViewModel patientsListVM = Provider.of<PatientsListViewModel>(context);
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
                        Navigator.pushReplacementNamed(context, '/menu-options');
                      },
                    ),

                  ],
                ),
                const SizedBox(height: 40.0,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: SvgPicture.asset('assets/svg/3lines.svg'),
                    title: const Center(
                      child: Text("Todos los pacientes",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20.0,),

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: SvgPicture.asset('assets/svg/rounded_user.svg'),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              height: 50.0,
                              width: 120.0,
                              //decoration: BoxDecoration(
                              //  border: Border.all()
                              //),
                              child: const Text("Juan C Valles"),
                            ),
                            onTap: (){
                              print("object");
                            },
                          ),
                          InkWell(
                            child: Column(
                              children: [
                                Visibility(
                                  visible: index==0 ?
                                    true:
                                    false,
                                  child: const Text("Historial clínico",
                                    style: TextStyle(
                                      fontSize: 12.0
                                    ),
                                  )
                                ),
                                const SizedBox(height: 15.0,),
                                SvgPicture.asset('assets/svg/3lines_file.svg'),
                                SvgPicture.asset('assets/svg/eye.svg'),
                              ],
                            ),
                            onTap: (){
                              print("object");
                            },
                          ),
                          InkWell(
                            child: Column(
                              children: [
                                Visibility(
                                  visible: index==0 ?
                                    true:
                                    false,
                                  child: const Text("Reporte",
                                    style: TextStyle(
                                      fontSize: 12.0
                                    ),
                                  )
                                ),
                                const SizedBox(height: 10.0,),
                                SvgPicture.asset('assets/svg/one_line_file.svg'),
                                SvgPicture.asset('assets/svg/square_pen.svg'),
                              ],
                            ),
                            onTap: () {
                              print("object");
                            },
                          ),
                        ],
                      ),
                    );
                  },

                )











              ],
            ),
          ),
        )
      ),
    );



  }

}