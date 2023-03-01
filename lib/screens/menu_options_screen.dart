
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurses_mvvm_provider/viewmodels/menu_options_viewmodel.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:split_view/split_view.dart';

import '../providers/generalAppInfo.dart';
import '../viewmodels/login_viewmodel.dart';


class MenuOptionsScreen extends StatefulWidget {
  static String routeName = '/menu-options';
  const MenuOptionsScreen({Key? key}) : super(key: key);

  @override
  MenuOptionsScreenState createState() => MenuOptionsScreenState();
}


class MenuOptionsScreenState extends State<MenuOptionsScreen>with SingleTickerProviderStateMixin {



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

    MenuOptionsViewModel menuOptionsVM = Provider.of<MenuOptionsViewModel>(context);
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      iconSize: 40.0,
                      icon: Icon(CupertinoIcons.arrow_left),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                    ),
                    IconButton(
                      iconSize: 40.0,
                      icon: Icon(CupertinoIcons.bell_fill),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/notifications');
                      },
                    )
                  ],
                ),
                const SizedBox(height: 40.0,),
                SvgPicture.asset('assets/svg/doctor.svg'),
                const Text("Teresa",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Buenos días! Es un gusto para mi poder ayudarte con tus tareas.",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const SizedBox(height: 20.0,),
                SizedBox(
                  width: 150.0,
                  height: 60.0,
                  child: TextButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: const BorderSide(color: Colors.grey)
                        )
                      )
                    ),
                    child: const Text("Que deseas hacer?",
                      style: TextStyle(
                        color: Colors.black
                      ),
                    )
                  )
                ),
                const SizedBox(height: 10.0,),
                const Divider(
                  thickness: 3.0,
                  indent: 20.0,
                  endIndent: 20.0,
                  color: Colors.black45,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: SvgPicture.asset('assets/svg/3lines.svg'),
                    title: const Text("Menú opciones",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: SvgPicture.asset('assets/svg/rounded_user.svg')
                    ),
                    title: const Text("Lista de pacientes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/patients-list');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: SvgPicture.asset('assets/svg/tablet_list.svg'),
                    title: const Text("Solicitar insumos",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: SvgPicture.asset('assets/svg/agenda.svg'),
                    title: const Text("Agenda",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: SvgPicture.asset('assets/svg/calculator.svg'),
                    title: const Text("Calcula tu dosis",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: SvgPicture.asset('assets/svg/medicine_pills.svg'),
                    title: const Text("Busca tu farmaco",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    onTap: () {

                    },
                  ),
                ),


              ],
            ),
          ),
        )
      ),
    );



  }

}