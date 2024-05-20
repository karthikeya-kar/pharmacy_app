import 'package:flutter/material.dart';
import 'package:pharmacy_app/screens/login_screen.dart'; // Adjust the import path as per your project structure

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        // Add your app theme configurations here
      ),
      home: LoginScreen(), // Navigate to the LoginScreen as the initial screen
    );
  }
}
