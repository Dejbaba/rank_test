import 'package:flutter/material.dart';
import 'package:rank_task/core/constants/app_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rank_task/ui/views/widgets/back_navigator.dart';
import 'package:rank_task/ui/views/widgets/listview_items/all_activity_item.dart';

class AllActivities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Activities',
          style: TextStyle(
            fontFamily: "Circular Std",
            color: Colors.black,
            fontSize: 24.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: BackNavigator(),
        actions: [
          GestureDetector(
              onTap: ()=> print("i was clicked"),
              child: Padding(
                padding: EdgeInsets.only(right: 22.22.w),
                child: Image.asset("assets/images/search.png", height: 23.78.h, width: 23.78.w,),
              ))
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(top: 31.h, bottom: 39.h),
          itemCount: dummyActivities.length,
          itemBuilder: (BuildContext context, int index) {
            return AllActivityItem(
              dummyActivity: dummyActivities[index],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 24.h,
            );
          },
        ),
    );
  }
}
