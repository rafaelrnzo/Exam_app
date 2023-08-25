import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';


class ListExam extends StatelessWidget {
  const ListExam({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
          Column(
            children: [
              Container(
                color: Colors.white,
                // decoration: BorderBox,
                child: Icon(Ionicons.cellular,size: 10.w,),
              )
            ],
          )
      ],
    );
  }
}