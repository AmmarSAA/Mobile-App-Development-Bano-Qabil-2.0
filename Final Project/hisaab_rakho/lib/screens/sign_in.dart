/**************************
* File Name: sign_in.dart *
* Author: Ammar S.A.A     *
* Output: Sign In Screen  *
**************************/

import 'package:flutter/material.dart';
import './sign_up.dart';
import './dashboard.dart';
import '../includes/functions.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(0),
            child: Image.asset(
              'assets/splash.png',
              height: 389,
              width: 360,
              alignment: Alignment.topCenter,
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
            child: Column(
              children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    hintStyle: TextStyle(fontSize: 16),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '********',
                    labelText: 'Password',
                    hintStyle: TextStyle(fontSize: 16),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "New User? Sign Up Now!",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                onPressed: () {
                  String email = emailController.text.trim();
                  String password = passwordController.text.trim();

                  if (email.isNotEmpty && password.isNotEmpty) {
                    bool isValid = verifyUser(email, password);

                    if (isValid) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
                      );
                    } else {
                      showAlertDialog(context, 'Invalid credentials.');
                    }
                  } else {
                    showAlertDialog(context, 'Fill all fields.');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minimumSize: const Size(194, 42),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showAlertDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert!!!'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
