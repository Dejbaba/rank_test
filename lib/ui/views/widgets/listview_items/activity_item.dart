import 'package:flutter/material.dart';
import 'package:rank_task/core/constants/app_constants.dart';
import 'package:rank_task/core/models/dummy_user.dart';
import 'package:rank_task/ui/shared/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityItem extends StatelessWidget {

  final DummyUser dummyUser;

  ActivityItem({Key key, this.dummyUser}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              dummyUser.image,
              height: 40.h,
              width: 40.w,
            ),
          ),
          title: Transform.translate(
            offset: Offset(-8, 0),
            child: Text(
              dummyUser.fullName,
              style: TextStyle(
                //fontFamily: "Circular Std",
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          subtitle: Transform.translate(
            offset: Offset(-8, 0),
            child: Text(
              dummyUser.date,
              style: TextStyle(
                //fontFamily: "Circular Std",
                color: manateeGrey,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 22.w),
          trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  dummyUser.amount,
                  style: TextStyle(
                    //fontFamily: "Circular Std",
                    color: spaceGrey,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 16.w,),
                Image.asset("assets/images/credit_arrow.png", height: 20.h, width: 20.w,)
              ],
            ),
        ),
        dummyUser == dummyUsers.last ? Container() : Divider(
          height: 16.h,
          thickness: 1.h,
          color: mercuryGrey,
        ),
      ],
    );
  }
}
