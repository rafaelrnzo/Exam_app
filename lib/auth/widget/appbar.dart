import 'package:exam_app/assets/color.dart';
import 'package:exam_app/auth/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

AppBar appBarLogin(BuildContext context) {
  return AppBar(
    toolbarHeight: 7.h,
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: Icon(
        Ionicons.arrow_back,
        color: text,
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
  );
}

AppBar appBarSIgnIn(BuildContext context) {
  return AppBar(
    toolbarHeight: 7.h,
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: Icon(
        Ionicons.arrow_back,
        color: text,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WelcomePage()),
        );
      },
    ),
  );
}

// AppBar homePage(BuildContext context) {
//   return AppBar(
//     automaticallyImplyLeading: false,
//     title: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Text(
//           'Welcome Back,',
//           style: GoogleFonts.inter(
//               color: text, fontWeight: FontWeight.w500, fontSize: 4.w),
//         ),
//         Text(
//           'Rafael Lorenzo',
//           style: GoogleFonts.inter(color: text, fontSize: 5.w),
//         ),
//       ],
//     ),
//     toolbarHeight: 10.h,
//     elevation: 0,
//     backgroundColor: Colors.transparent,
//     actions: [
//       Padding(
//           padding: EdgeInsets.only(right: 5.w),
//           child: GestureDetector(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => ProfilePage()));
//               print('kepencet cik');
//             },
//             child: Icon(
//               Ionicons.person_circle,
//               color: text,
//               size: 13.w,
//             ),
//           )),
//     ],
//   );
// }
