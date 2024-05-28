import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/forgotpassword_screen.dart'; // Correct file name

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pharmacy App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        '/forgot-password': (context) => ForgotPasswordScreen(),
      },
    );
  }
}
