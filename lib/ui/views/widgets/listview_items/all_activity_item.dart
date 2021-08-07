import 'package:flutter/material.dart';
import 'package:rank_task/core/constants/app_constants.dart';
import 'package:rank_task/core/models/dummy_activity.dart';
import 'package:rank_task/ui/shared/colors.dart';
import 'package:rank_task/ui/views/widgets/listview_items/activity_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AllActivityItem extends StatelessWidget {

  final DummyActivity dummyActivity;
  AllActivityItem({Key key, this.dummyActivity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 22.w),
          child: Text(
            dummyActivity.date,
            style: TextStyle(
              fontFamily: "Circular Std",
              color: manateeGrey,
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 24.h,),
        Container(
          width: width(context),
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Column(
            children: List.generate(dummyActivity.activities.length, (childIndex) => ActivityItem(
              dummyUser: dummyActivity.activities[childIndex],
              isHomeActivity: false,
              index: dummyActivities.indexOf(dummyActivity),
            )),
          ),
        ),
      ],
    );
  }
}
