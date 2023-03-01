
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/getwidget.dart';
import 'package:nurses_mvvm_provider/ui/UIHelper.dart';
import 'package:nurses_mvvm_provider/viewmodels/patient_data_viewmodel.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:split_view/split_view.dart';

import '../providers/generalAppInfo.dart';


class PatientDataScreen extends StatefulWidget {
  static String routeName = '/patient-data';
  const PatientDataScreen({Key? key}) : super(key: key);

  @override
  PatientDataScreenState createState() => PatientDataScreenState();
}


class PatientDataScreenState extends State<PatientDataScreen>with SingleTickerProviderStateMixin {



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

    PatientDataViewModel patientDataVM = Provider.of<PatientDataViewModel>(context);
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
                    Expanded(child: Container()),
                    const Text("Numero Paciente:",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      iconSize: 40.0,
                      icon: SvgPicture.asset('assets/svg/pink_pen.svg'),
                      onPressed: () {

                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    SvgPicture.asset('assets/svg/rounded_user.svg',
                        height: 100.0,
                        width: 100.0,
                    ),
                    const SizedBox(width: 10.0,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Nombre del paciente"),
                          const SizedBox(height: 10.0,),
                          TextField(
                            //controller: patientDataVM.usernameController,
                            decoration: InputDecoration(
                              //focusedborder cuando se esta focuseando el textfiel y enabledborder cuando no
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(color: Colors.lightBlue, width: 3.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(color: Colors.grey, width: 3.0),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                              hintText: "Añadir texto"
                            ),


                          ),




                        ],
                      ),
                    ),
                    const SizedBox(width: 20.0,),
                  ],

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: const [
                      SizedBox(width: 20.0,),
                      Text("N° Cama:"),

                    ],
                  ),
                ),
                const SizedBox(height: 20.0,),
                Row(
                  children: const [
                    SizedBox(width: 20.0,),
                    Text("Edad:"),

                  ],
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: const [
                    SizedBox(width: 20.0,),
                    Text("Dirección:"),

                  ],
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: const [
                    SizedBox(width: 20.0,),
                    Text("Teléfono:"),

                  ],
                ),
                const SizedBox(height: 30.0,),

                Row(
                  children: const [
                    SizedBox(width: 20.0,),
                     Text("Alergias y Precauciones",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 10.0,),

                Row(
                  children: [
                    const SizedBox(width: 20.0,),
                    Expanded(
                      child: TextField(
                        //controller: patientDataVM.usernameController,
                        decoration: InputDecoration(
                          //focusedborder cuando se esta focuseando el textfiel y enabledborder cuando no
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(color: Colors.lightBlue, width: 3.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: const BorderSide(color: Colors.black54, width: 3.0),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16, vertical: 20),

                        ),
                        maxLines: 2,

                      ),
                    ),
                    const SizedBox(width: 20.0,),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(
                  children: const [
                    SizedBox(width: 20.0,),
                     Text("Datos de internación",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: const [
                    SizedBox(width: 20.0,),
                    Text("Estado:"),

                  ],
                ),
                const SizedBox(height: 10.0,),
                Row(
                  children: const [
                    SizedBox(width: 20.0,),
                    Text("Fecha de ingreso:"),

                  ],
                ),
                const SizedBox(height: 30.0,),
                Row(

                  children: [
                    const SizedBox(width: 20.0,),

                    UIHelper.getElevatedButton(

                      5.0,
                      "Datos",
                      90.0,
                      50.0,
                      Color.fromARGB(255, 230, 14, 140),
                      () async{

                      },
                      null,
                      Colors.white
                    ),
                    Expanded(child: Container()),

                    UIHelper.getElevatedButton(
                      5.0,
                      "H. Clínica",
                      100.0,
                      50.0,
                      const Color.fromRGBO(56, 91, 216, 1.0),
                      () async{

                      },
                      null,
                      Colors.white,
                    ),
                    Expanded(child: Container()),

                    UIHelper.getElevatedButton(
                      5.0,
                      "Salud",
                      90.0,
                      50.0,
                      const Color.fromRGBO(56, 91, 216, 1.0),
                      () async{

                      },
                      null,
                      Colors.white,
                    ),
                    const SizedBox(width: 20.0,),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
                  child: UIHelper.getElevatedButton(
                    5.0,
                    "Tratamiento Farmacológico",
                    double.infinity,
                    50.0,
                    const Color.fromRGBO(56, 91, 216, 1.0),
                    () async{

                    },
                    null,
                    Colors.white,
                  )

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: UIHelper.getElevatedButton(
                    5.0,
                    "Plan de Cuidados",
                    double.infinity,
                    50.0,
                    const Color.fromRGBO(56, 91, 216, 1.0),
                    () async{

                    },
                    null,
                    Colors.white,
                  )

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