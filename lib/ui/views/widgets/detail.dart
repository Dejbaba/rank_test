import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rank_task/ui/shared/colors.dart';

class Detail extends StatelessWidget {

  final String description;
  final Widget widget;
  Detail({Key key, this.description, this.widget}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          description,
          style: TextStyle(
            //fontFamily: "Circular Std",
            color: manateeGrey,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 8.h,),
       widget
      ],
    );
  }
}
