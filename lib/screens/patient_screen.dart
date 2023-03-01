
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/getwidget.dart';
import 'package:nurses_mvvm_provider/ui/UIHelper.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:split_view/split_view.dart';

import '../providers/generalAppInfo.dart';
import '../viewmodels/login_viewmodel.dart';


class PatientScreen extends StatefulWidget {
  static String routeName = '/patient';
  const PatientScreen({Key? key}) : super(key: key);

  @override
  PatientScreenState createState() => PatientScreenState();
}


class PatientScreenState extends State<PatientScreen>with SingleTickerProviderStateMixin {



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
                    const SizedBox(width: 40.0,),
                    const Text("Numero Paciente:",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
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
                    children: [
                      const SizedBox(width: 20.0,),
                      Text("N° Cama:"),
                      Expanded(child: Container()),
                      Text("N° Expediente:"),
                      Expanded(child: Container()),
                      const SizedBox(width: 20.0,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      const SizedBox(width: 20.0,),

                      UIHelper.getElevatedButton(
                        20.0,
                        "Actividades - O.M",
                        220.0,
                        35.0,
                        const Color.fromRGBO(56, 91, 216, 1.0),
                        () async{

                        },
                        null,
                        Colors.white,
                      ),
                      Expanded(child: Container()),
                      SvgPicture.asset('assets/svg/pink_suitcase.svg',
                        height: 40.0,
                        width: 40.0,
                      ),
                      const SizedBox(width: 20.0,),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1.0,
                  color: Colors.grey
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  //itemExtent: 50.0,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50.0,
                              width: MediaQuery.of(context).size.width*0.40,
                              //decoration: BoxDecoration(
                              //  border: Border.all()
                              //),
                              child: Row(
                                children: [
                                  GFCheckbox(
                                    size: GFSize.SMALL,
                                    activeBgColor: Colors.black,
                                    onChanged: (value) {

                                    },
                                    value: true,
                                  ),
                                  Text(index==0?
                                    "Hora":
                                    "HH/MM/SS",
                                    style: TextStyle(
                                      fontWeight: index==0?
                                      FontWeight.bold:
                                      null
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 50.0,
                                //decoration: BoxDecoration(
                                //  border: Border.all()
                                //),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 10.0,),
                                    Text(index==0?
                                      "Descripción":
                                      "Medicación",
                                      style: TextStyle(
                                        fontWeight: index==0?
                                          FontWeight.bold:
                                          null,
                                      ),
                                    )
                                  ],
                                )
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 50.0,
                                //decoration: BoxDecoration(
                                //  border: Border.all()
                                //),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 10.0,),
                                    Text(index==0?
                                      "Opción":
                                      "Ver",
                                      style: TextStyle(
                                        fontWeight: index==0?
                                          FontWeight.bold:
                                          null,
                                      ),
                                    )
                                  ],
                                )
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1.0,
                          color: Colors.grey
                        ),
                      ],
                    );

                  },
                ),
                const SizedBox(height: 40.0,),
                Row(

                  children: [
                    const SizedBox(width: 20.0,),

                    UIHelper.getElevatedButton(
                      5.0,
                      "Datos",
                      90.0,
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