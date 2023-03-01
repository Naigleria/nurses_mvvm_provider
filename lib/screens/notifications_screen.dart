
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurses_mvvm_provider/viewmodels/notifications_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:split_view/split_view.dart';

import '../providers/generalAppInfo.dart';


class NotificationsScreen extends StatefulWidget {
  static String routeName = '/notifications';
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  NotificationsScreenState createState() => NotificationsScreenState();
}


class NotificationsScreenState extends State<NotificationsScreen>with SingleTickerProviderStateMixin {



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

    NotificationsViewModel notificationsVM = Provider.of<NotificationsViewModel>(context);
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
                const SizedBox(height: 20.0,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(

                    title: Center(
                      child: Text("Notificaciones",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20.0,),

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  itemExtent: 100.0,
                  itemBuilder: (BuildContext context, int index) {

                    String title = index==0?
                      "Curación": index==1?
                      "Medicamento": index==2?
                      "Estudio a realizar": index==3?
                      "Control": index==4?
                      "Nuevo Historial":
                      "Llamada";

                    String subtitle = index==0?
                      "NombrePaciente en 15 min.": index==1?
                      "NombrePaciente en 30 min.": index==2?
                      "NombrePaciente en 45 min.": index==3?
                      "NombrePaciente en 60 min.": index==4?
                      "Realizado a NombrePaciente":
                      "Realizada por NombrePaciente";

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                      child: InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2.0
                            )
                          ),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 80.0,
                                color: Colors.grey,
                                child: const Icon(CupertinoIcons.photo_fill,
                                  size: 30.0,
                                ),
                              ),
                              const SizedBox(width: 10.0,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(title,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(subtitle)
                                ],
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          print("Notification");
                        },
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