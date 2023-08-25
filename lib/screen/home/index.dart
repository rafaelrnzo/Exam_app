// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:exam_app/assets/color.dart';
import 'package:exam_app/screen/home/widget/listExam.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondary,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 6.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 5,
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: const Icon(
                                    Ionicons.search, // Use Ionicons search icon
                                  ),
                                  labelText: 'Search',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Ionicons.notifications_outline,
                                  size: 8.w,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 12),
                        width: double.infinity,
                        height: 7.5.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi,Rafael",
                              style: GoogleFonts.inter(
                                  color: text,
                                  fontSize: 6.w,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Let's see your exam today",
                              style: GoogleFonts.inter(
                                  color: text,
                                  fontSize: 4.w,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 18),
                        child: SizedBox(
                          height: 18.h,
                          width: double.infinity,
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                            color: primary,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "No available exam",
                                            style: GoogleFonts.inter(
                                                color: Colors.white,
                                                fontSize: 6.5.w,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Let's see your exam today",
                                            style: GoogleFonts.inter(
                                                color: Colors.white,
                                                fontSize: 3.5.w,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Ionicons.book,
                                    size: 20.w,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20 ),
                        width: double.infinity,
                        height: 10.h,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Lessons",
                                      style: GoogleFonts.inter(
                                          color: text,
                                          fontSize: 4.w,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "SEE ALL",
                                      style: GoogleFonts.inter(
                                          color: primary,
                                          fontSize: 3.5.w,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 7,),
                                Text(
                                  "Vocational High School - 12th Grade",
                                  style: GoogleFonts.inter(
                                      color: text,
                                      fontSize: 3.5.w,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                            Expanded(child: ListExam())
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
