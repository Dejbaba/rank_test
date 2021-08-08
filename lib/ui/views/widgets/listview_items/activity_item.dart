import 'package:flutter/material.dart';
import 'package:rank_task/core/constants/app_constants.dart';
import 'package:rank_task/core/models/dummy_user.dart';
import 'package:rank_task/ui/shared/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rank_task/ui/views/pages/activity_details.dart';

class ActivityItem extends StatelessWidget {
  final DummyUser dummyUser;
  final bool isHomeActivity;
  final int index;

  ActivityItem({Key key, this.dummyUser, this.isHomeActivity = true, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///navigate user to activity details screen
        InkResponse(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ActivityDetails(
                dummyUser: dummyUser,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image.asset(
                          dummyUser.image,
                          height: 40.h,
                          width: 40.w,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              dummyUser.fullName,
                              style: TextStyle(
                                fontFamily: "Circular Std",
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 4.h,),
                            Text(
                              dummyUser.date,
                              style: TextStyle(
                                fontFamily: "Circular Std",
                                color: manateeGrey,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15.w,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: spaceGrey,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        children: [
                          TextSpan(
                            text: "₦ ",
                          ),
                          TextSpan(
                              text: dummyUser.amount,
                              style: TextStyle(
                                fontFamily: "Circular Std",
                              ),),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Image.asset(
                      "assets/images/credit_arrow.png",
                      height: 20.h,
                      width: 20.w,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        if(isHomeActivity) dummyUser == dummyUsers.last
            ? Container()
            : Divider(
                height: 30.h,
                thickness: 1.h,
                color: mercuryGrey,
              )
        else dummyUser == dummyActivities[index].activities.last
    ? Container() : Divider(
    height: 30.h,
    thickness: 1.h,
    color: mercuryGrey,
    ),
      ],
    );
  }
}
