
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:nurses_mvvm_provider/screens/calculator_screen.dart';
import 'package:nurses_mvvm_provider/screens/calendar_screen.dart';
import 'package:nurses_mvvm_provider/screens/care_plans_screen.dart';
import 'package:nurses_mvvm_provider/screens/last_care_performed_screen.dart';
import 'package:nurses_mvvm_provider/screens/last_medication_given_screen.dart';
import 'package:nurses_mvvm_provider/screens/login_screen.dart';
import 'package:nurses_mvvm_provider/screens/medical_history_screen.dart';
import 'package:nurses_mvvm_provider/screens/medicine_description_screen.dart';
import 'package:nurses_mvvm_provider/screens/menu_options_screen.dart';
import 'package:nurses_mvvm_provider/screens/notifications_screen.dart';
import 'package:nurses_mvvm_provider/screens/patient_data_screen.dart';
import 'package:nurses_mvvm_provider/screens/patient_screen.dart';
import 'package:nurses_mvvm_provider/screens/patients_list_screen.dart';
import 'package:nurses_mvvm_provider/screens/pharmacotherapy_screen.dart';
import 'package:nurses_mvvm_provider/screens/record_care_performed.dart';
import 'package:nurses_mvvm_provider/screens/record_medication_given.dart';
import 'package:nurses_mvvm_provider/screens/report_screen.dart';
import 'package:nurses_mvvm_provider/screens/schedules_screen.dart';
import 'package:nurses_mvvm_provider/screens/signup_screen.dart';
import 'package:nurses_mvvm_provider/screens/supplies_screen.dart';
import 'package:nurses_mvvm_provider/viewmodels/calculator_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/calendar_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/care_plans_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/last_care_performed_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/last_medication_given_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/medical_history_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/medicine_description_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/menu_options_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/notifications_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/patient_data_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/patient_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/pharmacotherapy_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/record_care_performed_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/record_medication_given_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/report_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/schedules_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/signup_viewmodel.dart';
import 'package:nurses_mvvm_provider/viewmodels/supplies_viewmodel.dart';



import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import 'providers/generalAppInfo.dart';
import 'viewmodels/login_viewmodel.dart';
import 'viewmodels/patients_list_viewmodel.dart';
import 'package:intl/date_symbol_data_local.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  Intl.defaultLocale = 'es';
  initializeDateFormatting().then((_) => runApp(const App()));



}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        //hay que registrar todos los viewmodels por que sino truena cuando se quieran
        //instanciar en el Widget Build de las screens
        ChangeNotifierProvider(create: (context) => CalendarViewModel()),
        ChangeNotifierProvider(create: (context) => SchedulesViewModel()),
        ChangeNotifierProvider(create: (context) => CalculatorViewModel()),
        ChangeNotifierProvider(create: (context) => MedicineDescriptionViewModel()),
        ChangeNotifierProvider(create: (context) => SuppliesViewModel()),
        ChangeNotifierProvider(create: (context) => ReportViewModel()),
        ChangeNotifierProvider(create: (context) => MedicalHistoryViewModel()),
        ChangeNotifierProvider(create: (context) => RecordMedicationGivenViewModel()),
        ChangeNotifierProvider(create: (context) => LastMedicationGivenViewModel()),
        ChangeNotifierProvider(create: (context) => PharmacotherapyViewModel()),
        ChangeNotifierProvider(create: (context) => RecordCarePerformedViewModel()),
        ChangeNotifierProvider(create: (context) => LastCarePerformedViewModel()),
        ChangeNotifierProvider(create: (context) => CarePlansViewModel()),
        ChangeNotifierProvider(create: (context) => PatientDataViewModel()),
        ChangeNotifierProvider(create: (context)=> PatientViewModel()),
        ChangeNotifierProvider(create: (context) => NotificationsViewModel()),
        ChangeNotifierProvider(create: (context) => PatientsListViewModel()),
        ChangeNotifierProvider(create: (context) => MenuOptionsViewModel()),
        ChangeNotifierProvider(create: (context) =>GeneralAppInfo()),
        ChangeNotifierProvider(create: (context) =>LoginViewModel()),
        ChangeNotifierProvider(create: (context) =>SignupViewModel()),

      ],
      child: MaterialApp(
        title: "Nurses",
        debugShowCheckedModeBanner: false,
       /* home:
        ChangeNotifierProvider(
          create: (context) => LoginViewModel(),
          child: const LoginScreen(),

        ),*/
        initialRoute: '/signup',
        routes:
        {
          CalendarScreen.routeName:(context) => const CalendarScreen(),
          SchedulesScreen.routeName:(context) => const SchedulesScreen(),
          CalculatorScreen.routeName:(context) => const CalculatorScreen(),
          MedicineDescriptionScreen.routeName:(context) => const MedicineDescriptionScreen(),
          SuppliesScreen.routeName:(context) => const SuppliesScreen(),
          ReportScreen.routeName:(context) => const ReportScreen(),
          MedicalHistoryScreen.routeName:(context) => const MedicalHistoryScreen(),
          RecordMedicationGivenScreen.routeName:(context) => const RecordMedicationGivenScreen(),
          LastMedicationGivenScreen.routeName:(context) => const LastMedicationGivenScreen(),
          PharmacotherapyScreen.routeName:(context) => const PharmacotherapyScreen(),
          RecordCarePerformedScreen.routeName:(context) => const RecordCarePerformedScreen(),
          LastCarePerformedScreen.routeName:(context) => const LastCarePerformedScreen(),
          CarePlansScreen.routeName:(context) => const CarePlansScreen(),
          PatientDataScreen.routeName:(context) => const PatientDataScreen(),
          PatientScreen.routeName:(context) => const PatientScreen(),
          NotificationsScreen.routeName:(context) => const NotificationsScreen(),
          PatientsListScreen.routeName:(context) => const PatientsListScreen(),
          MenuOptionsScreen.routeName:(context) => const MenuOptionsScreen(),
          SignupScreen.routeName:(context) => const SignupScreen(),
          LoginScreen.routeName:(context) => const LoginScreen(),

        },
      ),
    );
  }

}