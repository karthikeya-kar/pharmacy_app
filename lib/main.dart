import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/forgotpassword_screen.dart';
import 'screens/patient_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pharmacy App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      routes: {
       '/forgot_password': (context) => const ForgotPasswordScreen(),
'/patient_list': (context) => const PatientListScreen(),

      },
    );
  }
}
