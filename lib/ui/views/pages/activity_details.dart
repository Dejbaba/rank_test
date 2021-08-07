import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rank_task/core/constants/app_constants.dart';
import 'package:rank_task/core/models/dummy_user.dart';
import 'package:rank_task/ui/shared/colors.dart';
import 'package:rank_task/ui/views/widgets/back_navigator.dart';
import 'package:rank_task/ui/views/widgets/detail.dart';

class ActivityDetails extends StatelessWidget {

  final DummyUser dummyUser;
   ActivityDetails({Key key, this.dummyUser}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mercuryGrey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Details',
          style: TextStyle(
            fontFamily: "Circular Std",
            color: Colors.black,
            fontSize: 24.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: BackNavigator(),
      ),
      body: SafeArea(
        child: Container(
            color: Colors.white,
            width: width(context),
            margin: EdgeInsets.only(
              left: 23.w,
              right: 24.w,
              top: 20.h,
            ),
            padding: EdgeInsets.only(
                left: 22.w,
                right: 21.w,
              top: 52.h,
              bottom: 51.h
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Detail(
                  description: "Transaction Type",
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Credit",
                        style: TextStyle(
                          fontFamily: "Circular Std",
                          color: shaftGrey,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 16.w,),
                      Image.asset("assets/images/credit_arrow.png", height: 20.h, width: 20.w,)
                    ],
                  ),
                ),
                SizedBox(height: 48.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Detail(
                        description: "Date",
                        widget: Text(
                              "20th Mar 2019",
                              style: TextStyle(
                                fontFamily: "Circular Std",
                                color: shaftGrey,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),

                      ),
                    ),
                    SizedBox(width: 40.w,),
                    Expanded(
                      child: Detail(
                          description: "Time",
                          widget: Text(
                            "8:45 PM",
                            style: TextStyle(
                              fontFamily: "Circular Std",
                              color: shaftGrey,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                        ),
                    ),
                  ],
                ),
                SizedBox(height: 48.h,),
                Detail(
                  description: "From",
                  widget: Row(
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
                            SizedBox(width: 8.w,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    dummyUser.fullName,
                                    style: TextStyle(
                                      fontFamily: "Circular Std",
                                      color: shaftGrey,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "2056HTGDKPOL90",
                                    style: TextStyle(
                                      fontFamily: "Circular Std",
                                      color: emperorGrey,
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
                      SizedBox(width: 24.w,),
                      Padding(
                        padding: EdgeInsets.only(right: 22.w),
                        child: Text(
                          "View profile",
                          style: TextStyle(
                            fontFamily: "Circular Std",
                            color: turquoiseGreen,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 48.h,),
                Detail(
                  description: "Narration",
                  widget: Text(
                    "Personal loan payment, please let me\nknow what is left",
                    style: TextStyle(
                      fontFamily: "Circular Std",
                      color: shaftGrey,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                ),
                SizedBox(height: 48.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Detail(
                        description: "Amount",
                        widget: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: spaceGrey,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,),
                            children: [
                              TextSpan(
                                text: "₦ ",
                              ),
                              TextSpan(
                                text: "5,450.",
                                style: TextStyle(
                                  fontFamily: "Circular Std",),
                              ),
                              TextSpan(
                                  text: "00",
                                  style: TextStyle(
                                      fontFamily: "Circular Std",
                                      color: spaceGrey.withOpacity(0.4))),
                            ],
                          ),
                        ),

                      ),
                    ),
                    SizedBox(width: 40.w,),
                    Expanded(
                      child: Detail(
                        description: "Status",
                        widget: Container(
                          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 5.h),
                          decoration: BoxDecoration(
                            color: turquoiseGreen.withOpacity(0.1),
                            borderRadius: BorderRadius.all(Radius.circular(4))
                          ),

                          child: Text(
                            "PAID SUCCESSFULLY",
                            style: TextStyle(
                              fontFamily: "Circular Std",
                              color: turquoiseGreen,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 48.h,),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 19.22.w, vertical: 9.33.h
                  ),
                  decoration: BoxDecoration(
                    color: manateeGrey.withOpacity(0.2),
                    borderRadius: BorderRadius.all(Radius.circular(17.5))
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("assets/images/receipt.png", height: 13.35.h, width: 13.35.w,),
                      SizedBox(width: 8.22.w,),
                      Text(
                        "Receipt",
                        style: TextStyle(
                          fontFamily: "Circular Std",
                          color: emperorGrey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
