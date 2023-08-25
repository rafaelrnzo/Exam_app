// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:exam_app/assets/color.dart';
import 'package:exam_app/auth/widget/appbar.dart';
import 'package:exam_app/screen/bottomNav.dart';
import 'package:exam_app/screen/home/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarLogin(context),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Text(
                    "Login",
                    style: GoogleFonts.inter(
                        fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Username'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null; // Return null if the input is valid
                    },
                    onSaved: (value) {
                      _username = value ?? "";
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null; // Return null if the input is valid
                    },
                    onSaved: (value) {
                      _password = value ?? "";
                    },
                  ),
                  SizedBox(height: 20.0),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary,
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 30.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        primary: Colors.blue,
                      ),
                      onPressed: () {
                        if (_formKey.currentState != null &&
                            _formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          _handleLogin(_username, _password);
                        }
                      },
                      child: Text('Login'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handleLogin(String username, String password) {
    // For this example, we'll assume a successful login when the username and password are "admin"

    if (username == "admin" && password == "admin") {
      // If the login is successful, navigate to the home screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              BottomNav(), // Replace HomeScreen with your home screen widget
        ),
      );
    } else {
      // If login fails, display an error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login failed. Please check your credentials.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
}
