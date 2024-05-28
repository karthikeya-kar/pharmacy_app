import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Untitled design (4).png'), // Path to your image asset
            fit: BoxFit.cover, // Ensures the image covers the entire screen
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Adds padding around the form
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Text(
                  'Login Page',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 95, 93, 93),
                  ),
                ),
                const SizedBox(height: 30), // Adds some space between the title and the form fields
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 81, 80, 80).withOpacity(0.8),
                    hintText: 'User ID',
                    border: const UnderlineInputBorder(), // Use underline style
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  obscureText: true, // Masks the password input
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 106, 104, 104).withOpacity(0.8),
                    hintText: 'Password',
                    border: const UnderlineInputBorder(), // Use underline style
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to patient list screen on login
                    Navigator.pushReplacementNamed(context, '/patient_list');
                  },
                  child: const Text('Login'), // Added const keyword
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgot_password');
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 104, 102, 102),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
