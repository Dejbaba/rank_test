import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rank_task/ui/views/pages/all_activities.dart';
import 'package:rank_task/ui/views/widgets/listview_items/activity_item.dart';
import '../../../core/constants/app_constants.dart';
import '../../shared/colors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 5.h),
      children: [
        acctBalance(context),
        SizedBox(height: 26.h,),
        Padding(
          padding:  EdgeInsets.only(left: 23.w, right: 25.67.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Activity',
                style: TextStyle(
                  fontFamily: "Circular Std",
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  InkResponse(
                    onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AllActivities(),
                      ),
                    ),
                    child: Text(
                      'View all',
                      style: TextStyle(
                        fontFamily: "Circular Std",
                        color: manateeGrey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.68.h,),
                  Icon(Icons.arrow_forward_ios_sharp, size: 10.h, color: manateeGrey,)
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 24.h,),
        recentActivities(context),
        SizedBox(height: 24.h,),
        Padding(
          padding: EdgeInsets.only(left: 23.w),
          child: Text(
            'Explore',
            style: TextStyle(
              fontFamily: "Circular Std",
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 16.h,),
        explore(context)
      ],
    );
  }

  ///acct summary
  acctBalance(BuildContext context) =>  Stack(
    children: [
      Container(
        width: width(context),
        padding: EdgeInsets.only(left: 27.w, right: 22.w, top: 16.h, bottom: 14.h),
        margin: EdgeInsets.only(left: 23.w, right: 25.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [turquoiseGreen, turquoiseBlue],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "9:30 pm - 23 Feb",
                    style: TextStyle(
                      fontFamily: "Circular Std",
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.add,
                              size: 12.sp,
                              color: turquoiseGreen,
                            ),
                            Text(
                              'Add Money',
                              style: TextStyle(
                                fontFamily: "Circular Std",
                                color: turquoiseGreen,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ]),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(100))),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              "Cash Available",
              style: TextStyle(
                fontFamily: "Circular Std",
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w400,),
                children: [
                  TextSpan(
                    text: "₦ ",
                  ),
                  TextSpan(
                    text: "200,000",
                    style: TextStyle(
                      fontFamily: "Circular Std",),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
      Positioned(
          bottom: -7.h,
          right: 24.w,
          child: Image.asset(
              "assets/images/vend.png",
              height: 62.h,
              width: 211.w,
              colorBlendMode: BlendMode.luminosity
          )),

    ],
  );

  ///recent activities
  recentActivities(BuildContext context) => Container(
    width: width(context),
    color: Colors.white,
    padding: EdgeInsets.symmetric(vertical: 16.h),
    child: Column(
      children: List.generate(dummyUsers.length, (index) => ActivityItem(
        dummyUser: dummyUsers[index],
      )),
    ),
  );

  ///explore
  explore(BuildContext context) => Container(
    color: Colors.white,
    width: width(context),
    padding: EdgeInsets.only(bottom: 17.46.h, left: 30.w, right: 16.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 46.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore places where\nVendPay is accepted',
                style: TextStyle(
                  fontFamily: "Circular Std",
                  color: turquoiseBlue,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 7.h,),
              Text(
                'VendPay is accepted in over\n20,000 stores across the country',
                style: TextStyle(
                  fontFamily: "Circular Std",
                  color: shaftGrey,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 2.w,),
        Expanded(child: Padding(
          padding: EdgeInsets.only(top: 19.h),
          child: Image.asset("assets/images/explore_places.png"),
        ))
      ],
    ),
  );
}
