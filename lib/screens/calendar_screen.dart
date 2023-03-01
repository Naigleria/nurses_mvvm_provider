
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurses_mvvm_provider/ui/UIHelper.dart';
import 'package:nurses_mvvm_provider/viewmodels/calculator_viewmodel.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

import '../providers/generalAppInfo.dart';


class CalendarScreen extends StatefulWidget {
  static String routeName = '/calendar';
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  CalendarScreenState createState() => CalendarScreenState();
}


class CalendarScreenState extends State<CalendarScreen>with TickerProviderStateMixin {



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

    CalculatorViewModel calculatorVM = Provider.of<CalculatorViewModel>(context);
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
                    icon: const Icon(CupertinoIcons.arrow_left),
                    onPressed: () {

                    },
                  ),

                ],
              ),
              const SizedBox(height: 20.0,),
              TableCalendar(
                weekNumbersVisible: true,
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false
                ),
                locale: 'es',
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              )
            ],
          )
        )
      ),
    );

  }

}