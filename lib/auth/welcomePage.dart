// ignore_for_file: prefer_const_constructors

import 'package:exam_app/assets/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 18.0),
          width: double.infinity,
          child: Column(
            children: [
              Expanded(flex: 2, child: HeaderWellcome()),
              Expanded(
                flex: 1,
                child: BodyWellcome(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column HeaderWellcome() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 16.w,
          ),
          child: Icon(
            Ionicons.radio_button_off,
            size: 55.w,
            color: primary,
          ),
        ),
      ],
    );
  }
}

class BodyWellcome extends StatelessWidget {
  const BodyWellcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Welcome to MyApp",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 8.w, color: text, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Center(
          child: Text(
            "You must Login or Sign Up to see my app",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 4.w, color: base50, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 8.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                width: 40.w,
                height: 6.h,
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: base),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 4.5.w,
                      color: whiteA,
                    ),
                  ),
                )),
            SizedBox(
                width: 40.w,
                height: 6.h,
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: base),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 4.5.w,
                      color: whiteA,
                    ),
                  ),
                )), 
          ],
        ),
        SizedBox(
          height: 8.w,
        ),
        Center(
          child: Text(
            "Don't have an account?",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 4.w, color: base50, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
