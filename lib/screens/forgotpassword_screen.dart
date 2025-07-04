import 'package:flutter/material.dart';


class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/forgot.png'), // Path to your forgot password background image
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
                
                const SizedBox(height: 30), // Adds some space between the title and the form fields
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email or username',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 71, 95, 124)),
                    border: InputBorder.none,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 71, 95, 124)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                

                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add forgot password functionality here
                  },
                  style: ElevatedButton.styleFrom(
                  
                  ),
                  child: const Text('Submit'
                  ,style: TextStyle(color:Color.fromARGB(255, 71, 95, 124),),
                  )
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    // Navigate back to the login screen
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Back to Login',
                    style: TextStyle(
                      color: Colors.white,
                   
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
