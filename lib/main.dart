import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/forgotpassword_screen.dart';
import 'screens/patient_list_screen.dart';
import 'screens/patient_profile_screen.dart';
import 'screens/patient_details_screen.dart';


import 'screens/medication_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patient App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/forgot_password': (context) => const ForgotPasswordScreen(),
        '/patient_list': (context) => const PatientListScreen(),
        '/patient_profile': (context) => PatientProfileScreen(
          patientName: ModalRoute.of(context)?.settings.arguments as String,
        ),
        '/patient_details': (context) => PatientDetailsScreen(
          patientName: ModalRoute.of(context)?.settings.arguments as String,
        ),
        '/medication': (context) => MedicationScreen(
          patientName: ModalRoute.of(context)?.settings.arguments as String,
        ),
      },
    );
  }
}

