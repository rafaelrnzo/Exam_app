import 'package:exam_app/assets/color.dart';
import 'package:exam_app/auth/widget/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBarSIgnIn(context),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: GoogleFonts.inter(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: TextForm(
                  labelText: 'Email',
                  hintText: 'youremail@gmail.com',
                )),
            SizedBox(height: 2.5.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: TextForm(
                  labelText: 'Username',
                  hintText: 'username...',
                )),
            SizedBox(height: 2.5.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: TextForm(
                  labelText: 'Password',
                  hintText: 'password...',
                )),
            SizedBox(height: 3.h),
            SizedBox(
              width: 70.w,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondary,
                  padding: const EdgeInsets.symmetric( 
                      vertical: 15.0, horizontal: 30.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  primary: Colors.blue,
                ),
                child: Text(
                  'Register',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600, fontSize: 4.w),
                )
              ),
            ),
            SizedBox(height: 3.h),
            SizedBox(
              height: 6.h,
            )
          ],
        ),
      ),
    );
  }

  
}


