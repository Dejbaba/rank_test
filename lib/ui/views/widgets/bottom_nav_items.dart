import 'package:flutter/material.dart';
import 'package:rank_task/core/constants/app_constants.dart';
import 'package:rank_task/ui/shared/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///bottom nav items
userBottomTabItems(BuildContext context) {
  return [
    new BottomNavigationBarItem(
      activeIcon: Image.asset(
        'assets/images/home.png',
        height: 40.h,
        width: 40.w,
      ),
      icon: Image.asset(
        'assets/images/home.png',
        //color: scarletRed,
        height: 40.h,
        width: 40.h,
      ),
      label: "",
    ),
    new BottomNavigationBarItem(
      activeIcon: Image.asset(
        'assets/images/credit.png',
        height: 56.h,
        width: 57.15.w,
      ),
      icon: Image.asset(
        'assets/images/credit.png',
        //color: scarletRed,
        height: 56.h,
        width: 57.15.w,
      ),
      label: "",
    ),
    new BottomNavigationBarItem(
      activeIcon: Container(
        height: 40.h,
        width: 40.w,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Image.asset(
          "assets/images/profile_avatar.png",
          height: 40.h,
          width: 40.w,
        ),
      ),
      icon: Container(
        height: 40.h,
        width: 40.w,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Image.asset(
          "assets/images/profile_avatar.png",
          height: 40.h,
          width: 40.w,
        ),
      ),
      label: "",
    ),
  ];
}
