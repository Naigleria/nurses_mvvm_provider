
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/getwidget.dart';
import 'package:nurses_mvvm_provider/ui/UIHelper.dart';
import 'package:nurses_mvvm_provider/viewmodels/care_plans_viewmodel.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:split_view/split_view.dart';

import '../providers/generalAppInfo.dart';
import '../viewmodels/login_viewmodel.dart';


class CarePlansScreen extends StatefulWidget {
  static String routeName = '/care-plans';
  const CarePlansScreen({Key? key}) : super(key: key);

  @override
  CarePlansScreenState createState() => CarePlansScreenState();
}


class CarePlansScreenState extends State<CarePlansScreen>with SingleTickerProviderStateMixin {



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

    CarePlansViewModel carePlansVM = Provider.of<CarePlansViewModel>(context);
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
                    const SizedBox(width: 40.0,),
                    const Text("Numero Paciente",
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
                            controller: carePlansVM.usernameController,
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
                    children: const [
                      SizedBox(width: 20.0,),
                      Text("N° Cama:"),

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
                        "Plan de Cuidados",
                        220.0,
                        35.0,
                        const Color.fromRGBO(56, 91, 216, 1.0),
                        () async{

                        },
                        null,
                        Colors.white,
                      ),
                      Expanded(child: Container()),
                      IconButton(
                        iconSize: 30.0,
                        icon: SvgPicture.asset('assets/svg/pink_pen.svg'),
                        onPressed: () {

                        },
                      ),
                      const SizedBox(width: 10.0,)
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1.0,
                  color: Colors.grey
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
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
                                    "Tipo": index==1?
                                    "Curación": index==2?
                                    "Estudio": index==3?
                                    "Control":
                                    "Evolución",
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
                                      "Celda B",
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
                                      "Frecuencia":
                                      "Celda C",
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
                        const Divider(
                          thickness: 1.0,
                          color: Colors.grey
                        ),
                      ],
                    );

                  },
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: const [
                      SizedBox(width: 20.0,),
                      Text("Nota:"),

                    ],
                  ),
                ),

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
                        maxLines: 3,

                      ),
                    ),
                    const SizedBox(width: 20.0,),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Row(

                  children: [
                    const SizedBox(width: 20.0,),

                    UIHelper.getElevatedButton(
                      5.0,
                      "Último",
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
                      "Historial",
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
                      "Registrar",
                      105.0,
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


                const SizedBox(height: 20.0,)
              ],
            ),
          ),
        )
      ),
    );



  }

}