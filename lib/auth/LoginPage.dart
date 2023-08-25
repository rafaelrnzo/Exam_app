import 'package:exam_app/assets/color.dart';
import 'package:exam_app/auth/SignInPage.dart';
import 'package:exam_app/auth/widget/form.dart';
import 'package:exam_app/screen/home/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBarLogin(context),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: GoogleFonts.inter(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: TextForm(
                    labelText: 'Email', hintText: 'youremail@gmail.com')),
            SizedBox(height: 2.5.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child:
                    TextForm(labelText: 'Password', hintText: 'password....')),
            SizedBox(height: 3.h),
            SizedBox(
              width: 70.w,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondary,
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 30.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  primary: Colors.white,
                ),
                child: Text(
                  'Login',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600, fontSize: 4.w),
                ),
              ),
            ),
            SizedBox(height: 3.h),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400, color: secondary)),
                  SizedBox(
                    width: 1.w,
                  ),
                  GestureDetector(
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.inter(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6.h,
            )
          ],
        ),
      ),
    );
  }
}
