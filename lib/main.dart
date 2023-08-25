import 'package:exam_app/assets/color.dart';
import 'package:exam_app/auth/welcomePage.dart';
import 'package:exam_app/screen/bottomNav.dart';
import 'package:exam_app/screen/home/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
          // primarySwatch: mainColor(),
        ),
        home:const WelcomePage(),
      );
    });
  }
}

Color mainColor() {
  return Color.fromRGBO(60, 102, 248, 1);
}
