import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                elevation: 10,
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
                                //fontFamily: "Circular Std",
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
      ],
    );
  }
}
