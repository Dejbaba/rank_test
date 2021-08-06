import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rank_task/ui/views/widgets/listview_items/activity_item.dart';

import '../../../core/constants/app_constants.dart';
import '../../shared/colors.dart';
import '../../shared/colors.dart';
import '../../shared/colors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 23.w, right: 25.w),
              child: Card(
                elevation: 7,
                shadowColor: Colors.black,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Container(
                  height: 123.h,
                  width: width(context),
                  //margin: EdgeInsets.only(left: 23.w, right: 25.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [turquoiseGreen, turquoiseBlue],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: -3.h,
                right: 20.w,
                child: Image.asset(
                  "assets/images/vend.png",
                  height: 62.h,
                  width: 211.w,
                )),
            Positioned.fill(
                left: 27.w,
                right: 22.w,
                child: Padding(
                  padding: EdgeInsets.only(left: 27.w, right: 22.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "9:30 pm - 23 Feb",
                              style: TextStyle(
                                //fontFamily: "Circular Std",
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 14.h,
                            ),
                            Text(
                              "Cash Available",
                              style: TextStyle(
                                //fontFamily: "Circular Std",
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Text(
                              "₦ 200,000",
                              style: TextStyle(
                                //fontFamily: "Circular Std Font",
                                color: Colors.white,
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.h),
                        child: TextButton(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.w),
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
                                      //fontFamily: "Circular Std",
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
                      )
                    ],
                  ),
                ))

          ],
        ),
        SizedBox(height: 26.h,),
        Padding(
          padding:  EdgeInsets.only(left: 23.w, right: 25.67.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Activity',
                style: TextStyle(
                  //fontFamily: "Circular Std",
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    'View all',
                    style: TextStyle(
                      //fontFamily: "Circular Std",
                      color: manateeGrey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
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
        Container(
          width: width(context),
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Column(
            children: List.generate(dummyUsers.length, (index) => ActivityItem(
              dummyUser: dummyUsers[index],
            )),
          ),
        ),
        SizedBox(height: 24.h,),
        Padding(
          padding: EdgeInsets.only(left: 23.w),
          child: Text(
            'Explore',
            style: TextStyle(
              //fontFamily: "Circular Std",
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 16.h,),
        Container(
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
                          'Explore Places where\nVendPay is accepted',
                          style: TextStyle(
                            //fontFamily: "Circular Std",
                            color: turquoiseBlue,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 7.h,),
                        Text(
                          'VendPay is accepted in over\n20,000 stores across the country',
                          style: TextStyle(
                            //fontFamily: "Circular Std",
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
        ),
      ],
    );
  }
}
